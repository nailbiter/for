#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/random-fn.py

       USAGE: ././miscutils/random-fn.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-20T22:21:30.670281
    REVISION: ---

==============================================================================="""

import click
from os import path
import uuid
import os
import sqlite3
import pandas as pd

@click.command()
@click.argument("ext",default="")
@click.option("--database-fn",type=click.Path(),default=path.join(path.split(__file__)[0],".random_fn.db"))
@click.option("--read/--no-read",default=False)
def random_fn(ext,database_fn,read):
#    click.echo(f"ext: \"{ext}\"")
    if ext=="":
        ext = None
    conn = sqlite3.connect(database_fn)
    if not read:
        fn = f"/tmp/{str(uuid.uuid4()).replace('-','_')}"
        if ext is not None:
            assert ext.startswith(".")
            fn += ext
        else:
            os.makedirs(fn,exist_ok=True)
        pd.DataFrame({"filename":[fn]}).to_sql("filenames",conn,if_exists="append",index=None)
        click.echo(fn)
    else:
        df = pd.read_sql_query('SELECT * FROM filenames', conn)
        click.echo(list(df["filename"])[-1])

if __name__=="__main__":
    random_fn()
