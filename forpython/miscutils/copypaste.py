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
#from dotenv import load_dotenv
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


@click.group()
@click.option("--db-name", type=click.Path(), default=path.join(path.dirname(__file__), ".copypaste.db"))
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def copypaste(ctx, debug, **kwargs):
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = kwargs
    if debug:
        logging.basicConfig(level=logging.INFO)
        


@copypaste.command(name="cp")
@click.pass_context
def copy(ctx):
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(
        types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    s = sys.stdin.read()
    logger.info(f"\"{s}\"")

    conn = sqlite3.connect(ctx.obj["kwargs"]["db_name"])
    pd.DataFrame([{"s":s,"dt":datetime.now().isoformat()}]).to_sql('copypaste',conn,if_exists='append',index=None)
    conn.close()


@copypaste.command(name="ps")
@click.option("-i","--index",type=int,default=0)
@click.pass_context
def paste(ctx,index):
    conn = sqlite3.connect(ctx.obj["kwargs"]["db_name"])
    df = pd.read_sql_query(f"select s from copypaste order by dt desc limit {index+1}",conn)
    print(df.s.iloc[index])
    conn.close()


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    copypaste()
