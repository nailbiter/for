#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/eta.py

       USAGE: ./miscutils/eta.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-03T14:25:16.801468
    REVISION: ---

==============================================================================="""

import click
from pymongo import MongoClient
from datetime import datetime, timedelta
import pandas as pd
import logging


@click.group()
@click.option("--debug/--no-debug", default=False)
def eta(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)
    pass


def _get_mongo_client():
    return MongoClient()


@eta.command()
@click.argument("name")
@click.option("-m", "--max-count", type=int, default=-1)
def create_counter(name, max_count):
    # FIXME: check that name is unique
    _get_mongo_client().eta.timers.insert_one(
        {"name": name, "max_count": max_count, "date": datetime.now()})


@eta.command()
@click.argument("name")
def increment_counter(name):
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    _get_mongo_client().eta.timer_progress.insert_one(
        {"name": name, "date": datetime.now()})
    if timer["max_count"] > 0:
        _show_counter(name)


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f


@_add_logger
def _show_counter(name, logger, max_count=-1):
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    df = pd.DataFrame(
        _get_mongo_client().eta.timer_progress.find({"name": name}))
    logger.info(df)
    assert max_count > 0 or timer["max_count"] > 0
    if timer["max_count"] > 0:
        max_count = timer["max_count"]
    eta_ = timer["date"] + (max(df.date)-timer["date"]) / \
        (len(df)) * max_count
    s = ""
    for i in range(len(df)):
        s += "*"
    for i in range(max_count-len(df)):
        s += " "
    print(f"[{s}]")
    print(f"eta: {eta_.isoformat()}")
    print(f"{len(df)}/{max_count}={len(df)/max_count*100:4.2f}")
    print(
        f"average length of iteration: {(max(df.date)-timer['date']) / (len(df))}")


@eta.command()
@click.argument("name")
@click.option("-m", "--max-count", type=int, default=-1)
def show_counter(name, max_count):
    _show_counter(name, max_count=max_count)


if __name__ == "__main__":
    eta()
