#!/usr/bin/env python3
import click
from os import system, walk
from os.path import getmtime, join
import json
import numpy as np
from uuid import uuid4
from datetime import datetime
import sqlite3
import pandas as pd
from itertools import product

_HEADERS = {f"{word} {i}-Year Term" for word,
            i in product(["Standard", "Convertible"], [1, 3])}
_PREFIXES = {"Payment Option", *
             {f"{word} Upfront" for word in ["Partial", "No", "All"]}}


@click.group()
def cli():
    pass


def _get_tmp_fn():
    return f"/tmp/{uuid4()}.txt"


def _get_last_file_in_directory(dirname):
    pass


def _cleanup_lines(lines):
    return list(filter(lambda line: len(line) > 0, [line.strip() for line in lines]))


def _parse_df(lines):
    records = [line.split("\t") for line in lines]
    for record in records:
        for i, s in enumerate(record):
            record[i] = s.strip()
    return pd.DataFrame([{k: v for k, v in zip(records[0], l)} for l in records[1:]])


@cli.command()
@click.option("--pretty/--no-pretty", default=False)
def show_prices(pretty):
    _, df = _get_prices()
    if pretty:
        _HEADERS = [f"Standard {2*i+1}-Year Term" for i in range(2)]
        df = pd.concat(pd.DataFrame([
            {
                "region": r["names"],
                "machine":k,
                **{kk: _parse_df(v[kk]) for kk in _HEADERS}
            }
            for k, v
            in json.loads(r["data"]).items()
        ]) for r in df.to_dict(orient="records"))
        for h in _HEADERS:
            df[h] = df[h].apply(lambda _df: _df[[
                                po == "All Upfront" for po in _df["Payment Option"]]].to_dict(orient="records")[0]["Upfront"])
            df[h] = df[h].apply(lambda s:float(s[1:].replace(",","")))
        fn = "/tmp/ffc3f3bb6a46137dc8b79332.csv"
        df.to_csv(fn, index=None, sep="\t")
        print(f"saved to {fn}")

    print(df)


@cli.command()
@click.option("-f", "--fn", type=click.Path())
def parse_names(fn):
    if fn is None:
        _DIR = "/Users/nailbiter/Desktop"
        _, _, fns = list(walk(_DIR))[0]
        fns = [join(_DIR, fn) for fn in fns if fn != ".DS_Store"]
        fns = sorted(fns, key=lambda fn: datetime.fromtimestamp(getmtime(fn)))
        fn = fns[-1]
    tmp_fn = _get_tmp_fn()
    system(f"""tesseract -l eng "{fn}" stdout > {tmp_fn}""")
    with open(tmp_fn) as f:
        lines = f.readlines()
    lines = _cleanup_lines(lines)
    df = pd.DataFrame({"lines": lines})
    print(df)

    conn = sqlite3.connect('example.db')
    df.to_sql("names", conn, if_exists="replace", index=None)
    conn.close()


def _get_empty_prices():
    prices_df = pd.DataFrame({"names": [], "data": []})
    return prices_df


def _get_prices():
    conn = sqlite3.connect('example.db')
    names_df = pd.read_sql_query("select * from names", conn)
    try:
        prices_df = pd.read_sql_query("select * from prices", conn)
    except Exception:
        prices_df = _get_empty_prices()
    conn.close()
    df = names_df.set_index("lines").join(prices_df.set_index("names"))

    df = df[[pd.isna(data) for data in df["data"]]]
    r = df.reset_index()["lines"][0]
    return r, prices_df


@cli.command()
@click.option("--dry-run/--no-dry-run", default=True)
def parse_pbpaste(dry_run):
    print(f"dry_run: {dry_run}")
    r, prices_df = _get_prices()
    print(f"please, `pbpaste` for {r}")

    if dry_run:
        print(prices_df)
    else:
        tmp_fn = _get_tmp_fn()
        system(f"pbpaste > {tmp_fn}")
#        print(f"saved to {tmp_fn}")
#        print(f"next, parse it with `parse-file --fn {tmp_fn}`")
        _parse_file(tmp_fn)


def _parse_file(fn):
    with open(fn) as f:
        lines = f.readlines()
    lines = _cleanup_lines(lines)
    while "Region:" not in lines[0]:
        lines = lines[1:]
    while "*This is the average monthly payment over the course of the Reserved Instance term." not in lines[-1]:
        lines = lines[:-1]
    lines = lines[1:-1]
    print(lines)

    res = {}
    i = 0
    while i < len(lines):
        key = lines[i]
        res[key] = {}
        i += 1
        while i < len(lines) and lines[i] in _HEADERS:
            _key = lines[i]
            i += 1
            res[key][_key] = []
            while i < len(lines) and np.any([lines[i].startswith(p) for p in _PREFIXES]):
                res[key][_key].append(lines[i])
                i += 1
        if i < len(lines):
            assert " " not in lines[i], f"{i}: {lines[i]}"

    print(json.dumps(res, indent=2))
    r, df = _get_prices()
    df = df.append(pd.DataFrame([{"names": r, "data": json.dumps(res)}]))
    print(r)
    print(df)
    conn = sqlite3.connect('example.db')
    df.to_sql("prices", conn, if_exists="replace", index=None)
    conn.close()


@cli.command()
def flush_prices():
    conn = sqlite3.connect('example.db')
    _get_empty_prices().to_sql("prices", conn, if_exists="replace", index=None)
    conn.close()


if __name__ == "__main__":
    cli()
