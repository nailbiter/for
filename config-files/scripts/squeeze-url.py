#!/usr/bin/env python3
"""===============================================================================

        FILE: scripts/squeeze-url.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-21T18:12:16.336490
    REVISION: ---

==============================================================================="""

import click
import pandas as pd
import re
import json
from os import path
import logging

def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f

@click.group()
@click.option("--database-file",type=click.Path(),default=path.join(path.split(__file__)[0],"..",".data/hosts.json"))
@click.option("--debug/--no-debug",default=False)
@click.pass_context
def squeeze_url(ctx,debug,**kwargs):
    if debug:
        logging.basicConfig(level=logging.INFO)
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = kwargs


@squeeze_url.command()
@click.option("-f", "--history-file", type=click.Path(), required=True)
@_add_logger
@click.pass_context
def squeeze(ctx,history_file,logger=None):
    database_file = ctx.obj["kwargs"]["database_file"]
    with open(database_file) as f:
        d = set(json.load(f)["hosts"])
    df = pd.read_csv(history_file, names=["url"], sep="\t")
    pat = re.compile("(?P<protocol>https|file|http):/{2,4}(?P<host>[^/]+).*")
    df["match"] = df["url"].apply(lambda s: pat.match(s))
    _nm = df[[pd.isna(m) for m in df.match]]
    if len(_nm)>0:
        logger.warning(_nm)
    for cn in ["protocol", "host"]:
        df[cn] = df["match"].apply(lambda m: m.group(cn))
    df = df.query("protocol!='file'")
    df = df.drop(columns=["match", "protocol", "url"])
    df = df[[h not in d for h in df.host]]
    df = df.drop_duplicates()
    df = df.sort_values(by="host")
    click.echo(df.to_csv(index=None, header=None))

@squeeze_url.command()
@click.option("-f", "--url-file", type=click.Path(), required=True)
@click.option("--dry-run/--no-dry-run",default=False)
@click.pass_context
def disable(ctx,url_file,dry_run):
    database_file = ctx.obj["kwargs"]["database_file"]
    df = pd.read_csv(url_file, names=["url"], sep="\t")
    with open(database_file) as f:
        d = set(json.load(f)["hosts"])
    new_d = set.union(d,set(df.url))
    click.echo(new_d-d)
    if not dry_run:
        with open(database_file,"w") as f:
            json.dump({"hosts":sorted(list(new_d))},f,indent=2,sort_keys=True)


if __name__ == "__main__":
    squeeze_url()
