#!/usr/bin/env python3
"""===============================================================================

        FILE: ./kostil/fix_habits.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-06T21:42:41.838573
    REVISION: ---

==============================================================================="""

import click
from _common import get_remote_mongo_client
import pandas as pd
from pytz import timezone
from bson.codec_options import CodecOptions


def _get_coll(mongo_pass):
    client = get_remote_mongo_client(mongo_pass)
    coll = client.logistics["alex.habitspunch"].with_options(
        codec_options=CodecOptions(tz_aware=True, tzinfo=timezone('Asia/Tokyo')))
    return coll


@click.command()
@click.option("-r", "--regex")
@click.option("--mongo_pass", envvar="MONGO_PASS", required=True)
@click.option("-l", "--limit", type=int, default=10)
@click.option("-i", "--index", default=0)
@click.option("--dry-run/--no-dry-run", default=True)
@click.option("--set-success/--no-set-success",default=True)
@click.option("-c","--comment")
def fix_habits(regex, mongo_pass, limit, index, dry_run,set_success, comment):
    assert mongo_pass is not None
    assert limit > 0
    assert limit> index >= 0
    filter_ = {}
    if regex is not None:
        filter_["name"] = {"$regex": regex}

    coll = _get_coll(mongo_pass)
    df = pd.DataFrame(coll.find(
        filter_, sort=[("date", -1)], limit=limit))
    print(df)
    o = df.to_dict(orient="records")[index]
    status = "SUCCESS" if set_success else "FAILURE"
    print(o)
    print(f"{o['status']} => {status}")
    if not dry_run:
        set_ = {"status":status}
        if comment is not None:
            set_["comments"] = comment
        coll.update_one({"_id": o["_id"]}, {"$set": set_})
    else:
        print("dry run")


if __name__ == "__main__":
    fix_habits()
