#!/usr/bin/env python3
"""===============================================================================

        FILE: stdin-lines-stats.py

       USAGE: ./stdin-lines-stats.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-09-08T22:34:52.173216
    REVISION: ---

TODO:
    1. median/mean/
    2. percentile
    3. unique
    4. shuffle

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import numpy as np
import sys


@click.group()
@click.option("-s", "--seed", type=int)
@click.option("--input-numeric/--no-input-numeric", default=False)
@click.pass_context
def stdin_lines_stats(ctx, seed, input_numeric):
    if seed is not None:
        np.random.seed(seed)
    ctx.ensure_object(dict)
    lines = sys.stdin.readlines()
    lines = [line.strip() for line in lines]
    if input_numeric:
        lines = [float(line) for line in lines]
    ctx.obj["lines"] = lines


@stdin_lines_stats.command()
@click.option("-p", "--prefix-string", required=True, envvar="STDIN_LINES_STATS__PREFIX__PREFIX_STRING")
@click.pass_context
def prefix(ctx, prefix_string):
    click.echo(
        "\n".join([f"{prefix_string}{line}" for line in ctx.obj["lines"]]))


@stdin_lines_stats.command()
@click.option("-n", type=int, required=True)
@click.option("--sort-output/--no-sort-output", "-s/ ", default=False)
@click.pass_context
def sample(ctx, n, sort_output):
    res = np.random.choice(ctx.obj["lines"], n)
    if sort_output:
        res = sorted(res)
    click.echo("\n".join(map(str, res)))


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    stdin_lines_stats()
