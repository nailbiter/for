#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/non-reusable/print-hourly-work-time.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-19T22:23:38.665741
    REVISION: ---

==============================================================================="""

import click
import pandas as pd
import os
import subprocess
import io
from datetime import datetime, timedelta
import numpy as np
import requests
import json


@click.command()
@click.option("--day", type=click.DateTime(["%Y-%m-%d"]))
@click.option("--webhook-url", envvar="PRINT_HOURLY_WORK_TIME_WEBHOOK")
@click.option("--dry-run/--no-dry-run", default=False)
def print_hourly_work_time(day, webhook_url, dry_run):
    if day is None:
        day = datetime.now()-timedelta(days=1)
    s = subprocess.getoutput("pbpaste")
    # click.echo(s)
    df = pd.read_csv(io.StringIO(s), sep="\t")
    df = df.query(f"日付==\"{day.strftime('%Y-%m-%d')}\"")
    df = df.groupby("名前").agg({"時間": np.sum})
    df = df.sort_values(by="名前")
    # click.echo(list(df))
    msg = (f"""
    {day.strftime("%Y-%m-%d")} の稼働時間：
    {df}
    """)
    msg = msg.strip()
    click.echo(msg)
    if not dry_run:
        requests.post(webhook_url, json.dumps({
            # "text": f"```{msg}```"
            "text": msg
        }),
            headers={
                "Content-type": "application/json"
        })


if __name__ == "__main__":
    print_hourly_work_time()
