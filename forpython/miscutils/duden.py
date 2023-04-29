#!/usr/bin/env python3
"""===============================================================================

        FILE: duden.py

       USAGE: ./duden.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-03-27T22:52:21.298748
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging
import sqlite3
import pandas as pd
import subprocess
from datetime import datetime, timedelta
from jinja2 import Template
import json
from alex_leontiev_toolbox_python.utils import db_wrap

def _duden()
WARNING:root:ext: ".py"
WARNING:root:/tmp/820654db_fab8_403c_ab05_4109a6041256.py
/tmp/820654db_fab8_403c_ab05_4109a6041256.py


@click.command()
@click.option("--duden-exec", default="duden")
@click.argument("word")
@click.option("--duden-db", type=click.Path(), default=path.join(path.dirname(__file__), ".duden.db"))
@click.option("--fuzzy/--no-fuzzy", "-f/ ", default=False)
@click.option("-r","--result", type=int)
def duden(duden_exec, word, duden_db, fuzzy,result):
    # FIXME: can be done better
    cmd = Template("{{duden}} {%if result is not none%}--result {{result}}{%endif%} {%if fuzzy%}--fuzzy{%endif%} \"{{word}}\"").render({
        "duden": duden_exec,
        "word": word,
        "fuzzy": fuzzy,
        "result":result,
    })
    os.system(cmd)
    ec, out = subprocess.getstatusoutput(cmd)
    conn = sqlite3.connect(duden_db)
    kwargs = {
        "fuzzy": fuzzy,
    }
    df = pd.DataFrame(
        [{"word": word, "out": out, "dt": datetime.now().isoformat(), "exit_code": ec, "kwargs": json.dumps(kwargs)}])
    df.to_sql("duden", conn, if_exists="append", index=None)
    conn.close()


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    duden()
