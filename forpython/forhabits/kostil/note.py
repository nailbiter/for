#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/forhabits/kostil/note.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-11T16:29:49.905392
    REVISION: ---

==============================================================================="""

import click
from _common import get_coll
from datetime import datetime, timedelta
import pandas as pd
import pymongo


@click.group()
@click.option("--mongo-pass", envvar="MONGO_PASS", required=True)
@click.pass_context
def note(ctx, mongo_pass):
    ctx.ensure_object(dict)
    ctx.obj["coll"] = get_coll(mongo_pass, "alex.notes")


@note.command()
@click.option("-l", "--limit", type=int, default=10)
@click.option("-r","--regex")
@click.pass_context
def show(ctx, regex, limit):
    coll = ctx.obj["coll"]
    filter_ = {}
    if regex is not None:
        filter_["content"] = {"$regex":regex}
    df = pd.DataFrame(
        coll.find(filter=filter_,sort=[("date", pymongo.DESCENDING)], limit=limit))
    click.echo(df)


@note.command()
@click.argument("text")
@click.option("-d", "--day", type=click.DateTime(["%Y-%m-%d %H:%M"]))
@click.option("--dry-run/--no-dry-run",default=False)
@click.pass_context
def add(ctx, text, day,dry_run):
    coll = ctx.obj["coll"]
    day -= timedelta(hours=9)
    if day is None:
        day = datetime.now()
    r = {"date": day, "content": text}
    click.echo(r)
    if not dry_run:
        coll.insert_one(r)
        click.echo("no dry run")
    else:
        click.echo("dry run")


if __name__ == "__main__":
    note()
