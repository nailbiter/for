#!/usr/bin/env python3
"""===============================================================================

        FILE: ./fordatawise/non-reusable/tables-exist-continuously.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-24T15:23:13.946126
    REVISION: ---

==============================================================================="""

import click
from google.cloud import bigquery
from datetime import datetime, timedelta
from tqdm import tqdm
import re
import pandas as pd


def _dates(start_date, end_date):
    assert start_date <= end_date
    res = [start_date]
    while res[-1] < end_date:
        res.append(res[-1]+timedelta(days=1))
    return res


@click.command()
@click.argument("table_name_prefix")
@click.argument("start_date", type=click.DateTime(["%Y-%m-%d"]))
@click.argument("end_date", type=click.DateTime(["%Y-%m-%d"]))
def tables_exist_continuously(table_name_prefix, start_date, end_date):
    table_name_split = table_name_prefix.split(".")
    assert len(table_name_split) == 3
    client = bigquery.Client()
    dataset_name = ".".join(table_name_split[:2])
    _pat = re.compile(r"\d{8}")
    sources = [datetime.strptime(t.table_id[-8:], "%Y%m%d") for t in tqdm(client.list_tables(
        dataset_name)) if t.table_id.startswith(table_name_split[-1]) and _pat.match(t.table_id[-8:]) is not None]
    sources = [d for d in sources if start_date <= d <= end_date]
    click.echo(pd.DataFrame({"missing_dates": [
               d for d in _dates(start_date, end_date) if d not in sources]}))


if __name__ == "__main__":
    tables_exist_continuously()
