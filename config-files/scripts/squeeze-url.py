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


@click.group()
def squeeze_url():
    pass


@squeeze_url.command()
@click.option("-f", "--history-file", type=click.Path(), required=True)
def squeeze(history_file):
    df = pd.read_csv(history_file, names=["url"], sep="\t")
    pat = re.compile("(?P<protocol>https|file|http):/{2,3}(?P<host>[^/]+).*")
    df["match"] = df["url"].apply(lambda s: pat.match(s))
    for cn in ["protocol", "host"]:
        df[cn] = df["match"].apply(lambda m: m.group(cn))
    df = df.query("protocol!='file'")
    df = df.drop(columns=["match", "protocol", "url"])
    df = df.drop_duplicates()
    df = df.sort_values(by="host")
    click.echo(df.to_csv(index=None, header=None))

@squeeze_url.command()
@click.option("-f", "--url-file", type=click.Path(), required=True)
@click.option("--database-file",type=click.Path(),default=".data/hosts.json")
@click.option("--dry-run/--no-dry-run",default=False)
def disable(url_file,database_file,dry_run):
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
