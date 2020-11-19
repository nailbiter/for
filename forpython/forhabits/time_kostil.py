#!/usr/bin/env python3
"""===============================================================================

        FILE: time_kostil.py

       USAGE: ./time_kostil.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-14T09:31:41.579546
    REVISION: ---

==============================================================================="""

import click
import pandas as pd
import pymongo
from _common import get_remote_mongo_client
from pytz import timezone
from bson.codec_options import CodecOptions
import logging

_TIME_CATEGORIES = ["useless", "gym", "social",
                    "logistics", "sleeping", "german", "parttime"]


def _get_coll(mongo_pass):
    client = get_remote_mongo_client(mongo_pass)
    coll = client.logistics["alex.time"].with_options(
        codec_options=CodecOptions(tz_aware=True, tzinfo=timezone('Asia/Tokyo')))
    return coll


@click.group()
@click.option("--mongo_pass", envvar="MONGO_PASS", required=True)
@click.option("-l", "--limit", type=int, default=24*2, envvar="TIME_KOSTIL_LIMIT")
@click.pass_context
def time_kostil(ctx, **kwargs):
    logging.basicConfig(level=logging.INFO)
    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v


@time_kostil.command()
@click.option("-r", "--remote-filter", type=click.Choice(_TIME_CATEGORIES))
@click.option("-l", "--local-filter", type=click.Choice(_TIME_CATEGORIES))
@click.pass_context
def show(ctx, remote_filter, local_filter):
    coll = _get_coll(ctx.obj["mongo_pass"])
    if remote_filter is None:
        filter_ = {}
    else:
        filter_ = {"category": remote_filter}
    df = pd.DataFrame(
        coll.find(filter=filter_, sort=[("date", pymongo.DESCENDING)], limit=ctx.obj["limit"]))
    if local_filter:
        df = df[[category == local_filter for category in df["category"]]]
    print(df.to_csv())


@time_kostil.command()
@click.pass_context
@click.argument("category", type=click.Choice(_TIME_CATEGORIES))
@click.argument("start", type=int)
@click.option("-e", "--endpoint-inclusive", type=int)
def edit(ctx, category, start, endpoint_inclusive):
    logger = logging.getLogger("edit")
    if endpoint_inclusive is None:
        endpoint_inclusive = start
    assert 0 <= start <= endpoint_inclusive
    coll = _get_coll(ctx.obj["mongo_pass"])
    df = pd.DataFrame(
        coll.find(sort=[("date", pymongo.DESCENDING)], limit=ctx.obj["limit"]))
    records = df.to_dict(orient="records")[start:endpoint_inclusive+1]
    logger.info(records)
    for r in records:
        logger.info(f"{r['_id']}: {r['category']} => {category}")
        coll.update_one({"_id": r["_id"]}, {"$set": {"category": category}})


if __name__ == "__main__":
    time_kostil()
