#!/usr/local/anaconda3/envs/base-with-altp/bin/python
"""===============================================================================

        FILE: /Users/nailbiter/for/for-jira-playground/scripts/ids-to-sprints.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-30T16:13:22.328504
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import subprocess
import json
import pandas as pd
from pymongo import MongoClient
import tqdm
import operator
import re
from datetime import datetime


@click.command()
@click.option("-n", "--iter-num", type=int, default=2)
@click.option(
    "-a", "--manual-addition", "manual_additions", type=(int, str), multiple=True
)
def ids_to_sprints(iter_num, manual_additions):
    outs = []
    for i in tqdm.trange(0, iter_num * 100, 100):
        ec, out = subprocess.getstatusoutput(
            f"""jira-cli.py api jql -s {i} -m 100 -j 'project = ML3 AND status IN ("To Do", "In Progress") AND sprint != empty ORDER BY created DESC' -o json 2>/dev/null"""
        )
        out = out.removeprefix("WARNING:root:")
        # logging.warning(out)
        assert ec == 0, (ec, out)
        outs.append(pd.DataFrame(json.loads(out)))
    df = pd.concat(outs)
    df = (
        pd.concat(
            df["fields"]
            .apply(operator.methodcaller("get", "customfield_10020", []))
            .apply(pd.DataFrame)
            .to_dict()
        )
        .reset_index()[["id", "name"]]
        .drop_duplicates()
    )
    cli = MongoClient(os.environ["MONGO_URL_GSTASKS"])
    df = pd.concat(
        [
            df,
            pd.DataFrame(cli["jira"]["sprints"].find())[["name", "id"]],
            pd.DataFrame(manual_additions, columns=["id", "name"]),
        ]
    ).drop_duplicates()
    df.set_index("name", inplace=True)
    df.sort_index(inplace=True)
    logging.warning(df)

    s = df.index.to_series().apply(re.compile("[0-9]{4}-[0-9]{2}-[0-9]{2}").match)
    # logging.warning(s)
    s1 = s.isna()
    s.dropna(inplace=True)
    s = (
        s.apply(operator.methodcaller("group", 0)).apply(
            pd.to_datetime, errors="coerce"
        )
        # .apply(lambda i: i[0])
    )
    # logging.warning(s)
    s2 = s.isna()
    s.dropna(inplace=True)
    # logging.warning(s)
    s = s.dt.date.ge(datetime.now().date())

    # logging.warning(s)
    logging.warning(sorted(df.index.to_series().unique()))
    df = df[s1 | s2 | s]

    click.echo(df.to_string())
    # logging.warning("\n" + str(df))


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    ids_to_sprints()
