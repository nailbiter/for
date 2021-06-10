#!/usr/bin/env python3
"""===============================================================================

        FILE: /tmp/167404f7_4089_4555_a8d6_bbe73e0ac290.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (nailbiter@dtws-work.in)
ORGANIZATION: Datawise Inc.
     VERSION: ---
     CREATED: 2021-06-10T13:13:48.600785
    REVISION: ---

==============================================================================="""

import click
from tqdm import tqdm
import re
from datetime import datetime, timedelta
import pandas as pd
import math
from pymongo import MongoClient


@click.command()
@click.argument("fns", nargs=-1)
@click.option("--mongo-pass", required=True, envvar="MONGO_PASS")
@click.option("--dry-run/--no-dry-run", default=True)
@click.option("-n", "--name", type=click.Choice(["mom", "masha"]), required=True)
def parse_telegram_history(fns, mongo_pass, dry_run, name):
    call_times = []
    fns = sorted(fns)
    click.echo(fns)
    date = None
    for fn in tqdm(fns):
        with open(fn) as f:
            lines = f.readlines()
        for line in lines:
            m = re.match(
                r'^.*title="(\d{2}.\d{2}.\d{4} \d{2}:\d{2}:\d{2})".*$', line)
            if m is not None:
                date = datetime.strptime(m.group(1), "%d.%m.%Y %H:%M:%S")
            m = re.match(r"(Outgoing|Incoming) \((\d+) seconds\)", line)
            if m is not None:
                call_times.append(
                    {"date": date, "time_seconds": int(m.group(2))})

    call_times = pd.DataFrame(call_times)
    call_times = call_times[[d >= datetime(
        2021, 3, 1) for d in call_times.date]]
    call_times["time_minutes"] = call_times.time_seconds.apply(
        lambda s: math.floor(s/60))
    call_times = call_times.query("time_minutes>0").copy()
    call_times["day"] = call_times["date"].apply(lambda d: d.date())
#    click.echo(pd.DataFrame(call_times))

    mongo_client = MongoClient(
        f"""mongodb+srv://nailbiter:{mongo_pass}@cluster0.gaq9o.mongodb.net/logistics?authSource=admin&replicaSet=atlas-1372ty-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true""")
    notes_df = pd.DataFrame(mongo_client.logistics["alex.notes"].find())
    notes_df = notes_df[[
        "#masha" in c and "#talk" in c for c in notes_df.content]]
    notes_df["date"] = notes_df["date"].apply(lambda d: d+timedelta(hours=9))
    notes_df = notes_df[[d >= datetime(
        2021, 3, 1) for d in notes_df.date]]
    notes_df["day"] = notes_df["date"].apply(lambda d: d.date())

    df = notes_df.set_index("day").join(call_times.set_index(
        "day"), how="outer", lsuffix="_n", rsuffix="_t")
    df = df.sort_index()
    df = df[[pd.isna(c) for c in df.content]]
    click.echo(df)

    rs = [
        {
            "date": r["date_t"]-timedelta(hours=9),
            "content":f"#{name} #talk {int(r['time_minutes'])}m",
        }
        for r
        in df.to_dict(orient="records")
    ]
    click.echo(rs)
    if not dry_run and len(rs) > 0:
        mongo_client.logistics["alex.notes"].insert_many(rs)


if __name__ == "__main__":
    parse_telegram_history()
