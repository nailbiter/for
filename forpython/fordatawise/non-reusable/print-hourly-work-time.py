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
import logging


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


def _hours(st, et):
    st,et = [(int(x.split(":")[0]), int(x.split(":")[1])) for x in [st,et]]
    st,et = [datetime(year=1900,month=1,day=1,hour=h,minute=m) for h,m in [st,et]]
    return (et-st).seconds/3600


@click.command()
@click.option("--day", type=click.DateTime(["%Y-%m-%d"]))
@click.option("--webhook-url", envvar="PRINT_HOURLY_WORK_TIME_WEBHOOK")
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--debug/--no-debug", default=False)
@_add_logger
def print_hourly_work_time(day, webhook_url, dry_run, debug, logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    if day is None:
        day = datetime.now()-timedelta(days=1)
    s = subprocess.getoutput("pbpaste")
    # click.echo(s)
    df = pd.read_csv(io.StringIO(s), sep="\t")
    # FIXME: this can be done more stable (hard-code)
    names = df["名前"].unique()
    df = df.query(f"日付==\"{day.strftime('%Y-%m-%d')}\"")
    df["時間"] = [_hours(st, et) for st, et in zip(df["開始"], df["終了"])]
    logger.info(df)
    df = df.groupby("名前").agg({"時間": np.sum})
    df = pd.concat([
        df.reset_index(),
        pd.DataFrame([
            {"名前": name, "時間": 0}
            for name
            in names
            if name not in (df.reset_index()["名前"].unique()) and not pd.isna(name)
        ])
    ])
    df["時間"] = df["時間"].apply(lambda h:f"{h:.2f}")
    df = df.set_index("名前")
    df = df.sort_index()
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
