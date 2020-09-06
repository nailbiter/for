#!/usr/bin/env python3
from pymongo import MongoClient
from datetime import datetime
import click
import pandas as pd
import logging
from tempfile import mkstemp
from bs4 import BeautifulSoup
import requests

# procedures
def _get_coll():
    return MongoClient()["for-music-player"].queue


def _insert_in_queue(obj, dry_run):
    logger = logging.getLogger("_insert_in_queue")
    queue = _get_coll()
    logger.info(f"insert {obj} in {queue}")
    if not dry_run:
        queue.insert_one(obj)


@click.group()
def cli():
    pass


@cli.command()
@click.argument("path")
@click.option("-r", "--recursive", is_flag=True)
@click.option("-d", "--dry_run", is_flag=True)
def add(path, recursive=False, dry_run=False):
    if recursive:
        req = requests.get(path)
        soup = BeautifulSoup(req.text, "html.parser")
        paths = [path+a['href'] for a in soup.find_all("a")]
    else:
        paths = [path]
    for _path in paths:
        _insert_in_queue(
            {"path": _path, "date": datetime.now(), "played": False}, dry_run)


@cli.command()
def list():
    df = pd.DataFrame(_get_coll().find(
        filter={"played": False}, sort=[("date", 1)]))
    # FIXME: format path from query style
    print(df.loc[:, ["path"]])

# FIXME: "move up and down" command
# FIXME: add random command
# FIXME: add length to lib
# FIXME: buffer


# main
if __name__ == "__main__":
    pd.set_option('max_colwidth', None)
    logging.basicConfig(level=logging.INFO)
    cli()
