#!/usr/bin/env python3
from pymongo import MongoClient
from datetime import datetime
import click
import pandas as pd


# procedures
def _get_coll():
    return MongoClient()["for-music-player"].queue


@click.group()
def cli():
    pass


@cli.command()
@click.argument("path")
def add(path):
    # FIXME: "recursive" key
    _get_coll().insert_one(
        {"path": path, "date": datetime.now(), "played": False})


@cli.command()
def list():
    df = pd.DataFrame(_get_coll().find(
        filter={"played": False}, sort=[("date", 1)]))
    # FIXME: format path from query style
    print(df.loc[:, ["path"]])

# FIXME: "move up and down" command
# FIXME: add random command


# main
if __name__ == "__main__":
    pd.set_option('max_colwidth', None)
    cli()
