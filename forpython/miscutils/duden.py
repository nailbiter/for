#!/usr/bin/env python3
"""===============================================================================

        FILE: duden.py

       USAGE: ./duden.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: TODO: colored output
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-03-27T22:52:21.298748
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import sqlite3
import pandas as pd
import subprocess
from datetime import datetime, timedelta
from jinja2 import Template
import json
from alex_leontiev_toolbox_python.utils.db_wrap import DbCacheWrap


@DbCacheWrap(
    f"sqlite:///{path.abspath(path.join(path.dirname(__file__),'.duden.db'))}",
)
def _duden(duden_exec: str, word: str, fuzzy: bool, result: int):
    cmd = Template(
        '{{duden}} {%if result is not none%}--result {{result}}{%endif%} {%if fuzzy%}--fuzzy{%endif%} "{{word}}"'
    ).render(
        {
            "duden": duden_exec,
            "word": word,
            "fuzzy": fuzzy,
            "result": result,
        }
    )

    # FIXME: can be done better

    # os.system(cmd)
    ec, out = subprocess.getstatusoutput(cmd)
    return out


@click.command()
@click.option("--duden-exec", default="duden")
@click.argument("word")
@click.option("--fuzzy/--no-fuzzy", "-f/ ", default=False)
@click.option("--use-cache/--no-use-cache", default=True)
@click.option("-r", "--result", type=int)
def duden(duden_exec, word, fuzzy, result, use_cache):
    out = _duden(duden_exec, word, fuzzy, result, is_force_cache_miss=not use_cache)
    click.echo(out)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    duden()
