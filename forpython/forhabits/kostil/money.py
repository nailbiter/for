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
import pymongo

def _get_coll(mongo_pass):
    client = get_remote_mongo_client(mongo_pass)
    coll = client.logistics["alex.money"].with_options(
        codec_options=CodecOptions(tz_aware=True, tzinfo=timezone('Asia/Tokyo')))
    return coll

@click.command()
@click.option("-d","--day",type=click.DateTime(["%Y-%m-%d"]))
@click.option("--mongo_pass", envvar="MONGO_PASS", required=True)
def money(day,mongo_pass):
    if day is None:
        day = datetime.now()
    coll = _get_coll(mongo_pass)
    money_df = pd.DataFrame(
            coll.find({"$and":[{"date":{"$gte":datetime(day.year,day.month,day.day)}},{"date":{"$lt":datetime(day.year,day.month,day.day)+timedelta(days=1)}}]},sort=[("date", pymongo.DESCENDING)]))
    print(money_df.to_string())

if __name__=="__main__":
    money()
