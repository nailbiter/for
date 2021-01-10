#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/keyman.py

       USAGE: ./miscutils/keyman.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-06T17:44:33.759527
    REVISION: ---

==============================================================================="""

import click
from _keyman import KeyClient


@click.group()
@click.option("-t", "--tag", multiple=True)
@click.pass_context
def keyman(ctx, tag):
    ctx.ensure_object(dict)
    ctx.obj["client"] = KeyClient(tag=tag)


@keyman.command()
@click.pass_context
def list(ctx):
    ctx.obj["client"].list()


@keyman.command()
@click.argument("key")
@click.pass_context
def get(ctx, key):
    print(ctx.obj["client"].get(key))


@keyman.command()
@click.argument("key")
@click.argument("value")
@click.pass_context
def set(ctx, key, value):
    ctx.obj["client"].set(key, value)


if __name__ == "__main__":
    keyman()
