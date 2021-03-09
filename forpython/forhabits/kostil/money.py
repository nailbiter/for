#!/usr/bin/env python3
"""===============================================================================

        FILE: money.py

       USAGE: ./money.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-02-15T17:30:47.814276
    REVISION: ---

==============================================================================="""

import click
from datetime import datetime, timedelta
from _common import get_remote_mongo_client
from pytz import timezone
from bson.codec_options import CodecOptions
import pandas as pd
import numpy as np
import pymongo
import logging
import json
import requests


def _get_coll(mongo_pass):
    client = get_remote_mongo_client(mongo_pass)
    coll = client.logistics["alex.money"].with_options(
        codec_options=CodecOptions(tz_aware=True, tzinfo=timezone('Asia/Tokyo')))
    return coll


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f

@click.command()
@click.option("-d", "--day", type=click.DateTime(["%Y-%m-%d"]))
@click.option("-m", "--mode", type=click.Choice(["daily", "monthly"]), default="daily")
@click.option("--mongo_pass", envvar="MONGO_PASS", required=True)
@click.option("--debug/--no-debug",default=False)
@click.option("--monthly-regular-payments-file-name",type=click.Path(),default=".monthly_regular_payments.json")
@click.option("--monthly-channel-webhook",envvar="MONTHLY_CHANNEL_WEBHOOK")
@_add_logger
def money(day, mongo_pass, mode, debug,monthly_regular_payments_file_name,monthly_channel_webhook,logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    if day is None:
        day = datetime.now()
    coll = _get_coll(mongo_pass)
    if mode == "daily":
        money_df = pd.DataFrame(
            coll.find({"$and": [{"date": {"$gte": datetime(day.year, day.month, day.day)}}, {"date": {"$lt": datetime(day.year, day.month, day.day)+timedelta(days=1)}}]}, sort=[("date", pymongo.DESCENDING)]))
        click.echo(money_df.to_string())
    elif mode == "monthly":
        assert monthly_channel_webhook is not None
        next_month = [day.year, day.month]
        next_month[1] += 1
        if next_month[1] >= 12:
            next_month[1] = next_month[1] % 12
            next_month[0] += 1
        money_df = pd.DataFrame(
            coll.find({"$and": [{"date": {"$gte": datetime(day.year, day.month, 1)}}, {"date": {"$lt": datetime(*next_month, 1)+timedelta(days=1)}}]}, sort=[("date", pymongo.DESCENDING)]))
        money_df = money_df[[d.month==day.month and d.year==d.year for d in money_df["date"]]]
        with open(monthly_regular_payments_file_name) as f:
            monthly_regular_payments = json.load(f)
        for r in monthly_regular_payments:
            money_df = money_df.append({
                **{"tags":[],"_id":"***regular***"},
                **{k:v for k,v in r.items() if k!="date"},
                "date":datetime(day.year,day.month,**r["date"]),
            },ignore_index=True)
        logger.info(money_df.to_csv())

        money_df = money_df.groupby("category").agg({"amount":np.sum})
        money_df = money_df.reset_index()
        money_df = money_df.append({"category":"_total","amount":money_df.amount.sum()},ignore_index=True)
        money_df = money_df.set_index("category")
        click.echo(money_df.to_string())
        requests.post(monthly_channel_webhook, json.dumps({
            "text": f"""```{day.strftime("%Y-%m")}\n{money_df.to_string()}```"""
        }),
            headers={
                "Content-type": "application/json"
        })
    else:
        raise NotImplementedError(f"unknown mode \"{mode}\"")


if __name__ == "__main__":
    money()
