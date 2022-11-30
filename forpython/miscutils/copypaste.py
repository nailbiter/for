#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/copypaste.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-04-14T14:28:35.099684
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import sys
import sqlite3
import pandas as pd
import inspect
import types
from typing import cast
import logging
from datetime import datetime
import uuid


@click.group()
@click.option(
    "--db-name",
    type=click.Path(),
    default=path.join(path.dirname(__file__), ".copypaste.db"),
)
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def copypaste(ctx, debug, **kwargs):
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = kwargs
    if debug:
        logging.basicConfig(level=logging.INFO)


@copypaste.command()
@click.pass_context
@click.option(
    "-o", "--out-format", type=click.Choice(["plain", "csv"]), default="plain"
)
def ls(ctx, out_format):
    conn = sqlite3.connect(ctx.obj["kwargs"]["db_name"])
    # FIXME: optimize to fetch only one not all
    df = pd.read_sql_query(f"select * from copypaste order by dt desc", conn)
    conn.close()
    if out_format == "plain":
        click.echo(df.to_string())
    elif out_format == "csv":
        click.echo(df.to_csv())
    else:
        raise NotImplementedError((out_format,))


@copypaste.command(name="cp")
@click.option("--strip/--no-strip", "-s/ ", default=False)
@click.pass_context
def copy(ctx, strip):
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    s = sys.stdin.read()
    if strip:
        s = s.strip()
    logger.info(f'"{s}"')

    conn = sqlite3.connect(ctx.obj["kwargs"]["db_name"])
    pd.DataFrame(
        [
            {
                "s": s,
                "dt": datetime.now().isoformat(),
                "uuid": str(uuid.uuid4()),
            }
        ]
    ).to_sql("copypaste", conn, if_exists="append", index=None)
    conn.close()


@copypaste.command(name="ps")
@click.option("-i", "--index", type=int, default=0)
@click.option("--strip/--no-strip", "-s/ ", default=False)
@click.option("-u", "--uuid-code")
@click.pass_context
def paste(ctx, index, strip, uuid_code):
    conn = sqlite3.connect(ctx.obj["kwargs"]["db_name"])
    #    logging.warning(uuid_code is None)
    if uuid_code is None:
        sql = f"""
        with t as (
            select s, dt
            from copypaste 
            order by dt desc 
            limit {index+1}
        )
        select s
        from t
        order by dt asc
        limit 1
        """
    else:
        sql = f"""
        select s 
        from copypaste
        where glob("{uuid_code}*",uuid)
        """
    #        logging.warning(sql)
    df = pd.read_sql_query(sql, conn)
    conn.close()
    assert len(df) == 1, df
    (s,) = df["s"].to_list()
    click.echo(s, nl=not strip)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    copypaste()
