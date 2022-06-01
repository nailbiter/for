#!/usr/bin/env python3
"""===============================================================================

        FILE: scripts/disable-url.py

       USAGE: ./scripts/disable-url.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-07-19T17:13:26.028073
    REVISION: ---

==============================================================================="""

import click
import re
import json
from os import path
import os
from pymongo import MongoClient
import pandas as pd
import itertools
import logging
import requests


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@click.group()
@click.option("--database-file", type=click.Path(), default=path.join(path.split(__file__)[0], "..", ".data/hosts.json"))
@click.pass_context
def disable_url(ctx, **kwargs):
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = {**kwargs}


@disable_url.command()
@click.argument("url-address")
@click.pass_context
def url(ctx, url_address):
    pat = re.compile("(?P<protocol>https|file|http):/{2,4}(?P<host>[^/]+).*")
    m = pat.match(url_address)
    assert m is not None
    click.echo(m.group("host"))

    _add_url_to_db(ctx.obj["kwargs"]["database_file"], m.group(
        "host"), posttodo_command="sudo -E ./load-config-files.py")
    os.system(f"git commit -a -m 'disable url'")


def _get_remote_mongo_client(mongo_pass):
    return MongoClient(
        f"mongodb+srv://nailbiter:{mongo_pass}@cluster0.gaq9o.mongodb.net/logistics?authSource=admin&replicaSet=atlas-1372ty-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")


@_add_logger
def _add_url_to_db(database_file, *urls, logger=None, dry_run=False, posttodo_command=None):
    with open(database_file) as f:
        data = json.load(f)
    init_hosts = data["hosts"]
    data["hosts"] = {*data["hosts"], *urls}
    data["hosts"] = list(sorted(list(data["hosts"])))
    if len(data["hosts"]) > len(init_hosts):
        logger.warning(f"adding {set(data['hosts'])-set(init_hosts)}")
        if not dry_run:
            logger.warning("no dry_run")
            with open(database_file, "w") as f:
                json.dump(data, f, sort_keys=True, indent=2)
            if posttodo_command is not None:
                if isinstance(posttodo_command, str):
                    os.system(posttodo_command)
                else:
                    posttodo_command()
        else:
            logger.warning("dry_run")


def _send_sudo_request(webhook_url):
    _ = requests.post(webhook_url, json.dumps({
        "text": "`cd ~/for/config-files && . .envrc && sudo -E ./load-config-files.py`",
    }),
        headers={
            "Content-type": "application/json"
    })


@disable_url.command()
@click.option("--mongo-pass", envvar="MONGO_PASS", required=True)
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--webhook-url", envvar="WEBHOOK_URL", required=True)
@click.pass_context
def notes(ctx, mongo_pass, dry_run, webhook_url):
    mongo_client = _get_remote_mongo_client(mongo_pass)
    notes_df = pd.DataFrame(mongo_client.logistics["alex.notes"].find(
        filter={"content": {"$regex": "#porn"}}))
    urls = itertools.chain(
        *notes_df.content.apply(lambda s: [t for t in s.split(" ") if t != "#porn"]))
    pat = re.compile("(?P<protocol>https|file|http):/{2,4}(?P<host>[^/]+).*")
    urls = map(lambda m: m.group("host"), filter(
        lambda m: m is not None, map(pat.match, urls)))

    urls = list(urls)
    _add_url_to_db(ctx.obj["kwargs"]["database_file"], *urls,
                   dry_run=dry_run, posttodo_command=lambda: _send_sudo_request(webhook_url))


if __name__ == "__main__":
    disable_url()
