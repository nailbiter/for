#!/usr/bin/env python3
import click
from os import system, walk
from os.path import getmtime, join
from uuid import uuid4
from datetime import datetime
import sqlite3
import pandas as pd


@click.group()
def cli():
    pass

def _get_tmp_fn():
    return f"/tmp/{uuid4()}.txt"

def _get_last_file_in_directory(dirname):
    pass

@cli.command()
@click.option("-f", "--fn", type=click.Path())
def parse_names(fn):
    if fn is None:
        # TODO
        _DIR = "/Users/nailbiter/Desktop"
        _, _, fns = list(walk(_DIR))[0]
        fns = [join(_DIR, fn) for fn in fns if fn != ".DS_Store"]
        fns = sorted(fns, key=lambda fn: datetime.fromtimestamp(getmtime(fn)))
        fn = fns[-1]
    tmp_fn = _get_tmp_fn()
    system(f"""tesseract -l eng "{fn}" stdout > {tmp_fn}""")
    with open(tmp_fn) as f:
        lines = f.readlines()
    lines = list(filter(lambda line:len(line)>0,[line.strip() for line in lines]))
    df = pd.DataFrame({"lines":lines})
    print(df)

    conn = sqlite3.connect('example.db')
    df.to_sql("names",conn,if_exists="replace",index=None)
    conn.close()

def _get_prices():
    conn = sqlite3.connect('example.db')
    names_df = pd.read_sql_query("select * from names",conn)
    try:
        prices_df = pd.read_sql_query("select * from prices",conn)
    except Exception:
        prices_df = pd.DataFrame({"names":[],"data":[]})
    conn.close()
    df = names_df.set_index("lines").join(prices_df.set_index("names"))

    df = df[[pd.isna(data) for data in df["data"]]]
    r = df.reset_index()["lines"][0]
    return r,prices_df
    

@cli.command()
@click.option("--dry-run/--no-dry-run", default=True)
def parse_pbpaste(dry_run):
    print(f"dry_run: {dry_run}")
    r,_ = _get_prices()
    print(f"please, `pbpaste` for {r}")

    if not dry_run:
        tmp_fn = _get_tmp_fn()
        system(f"pbpaste > {tmp_fn}")
        with open(tmp_fn) as f:
            s = f.read()
        print(f"saved to {tmp_fn}")    
        print(f"next, parse it with `parse-file --fn {tmp_fn}`")    

if __name__ == "__main__":
    cli()
