#!/usr/bin/env python3
"""===============================================================================

        FILE: ./fordatawise/non-reusable/remove-bigquery-cache-files.py

       USAGE: ././fordatawise/non-reusable/remove-bigquery-cache-files.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-05T21:11:26.606004
    REVISION: ---

==============================================================================="""

import click
import json
import os
from os import path
import pandas as pd
import math
import uuid
from tqdm import tqdm
from datetime import datetime

_UNIT_LIST = list(
    zip(['bytes', 'kB', 'MB', 'GB', 'TB', 'PB'], [0, 0, 1, 2, 2, 2]))


def _sizeof_fmt(num):
    """Human friendly file size
    stolen from https://stackoverflow.com/a/10171475
    """
    if num > 1:
        exponent = min(int(math.log(num, 1024)), len(_UNIT_LIST) - 1)
        quotient = float(num) / 1024**exponent
        unit, num_decimals = _UNIT_LIST[exponent]
        format_string = '{:.%sf} {}' % (num_decimals)
        return format_string.format(quotient, unit)
    if num == 0:
        return '0 bytes'
    if num == 1:
        return '1 byte'


@click.command()
@click.option("--where", default=".", type=click.Path())
@click.option("--ignore-what", multiple=True)
@click.option("-s","--start-index",type=int,default=0)
@click.option("-e","--end-index",type=int)
@click.option("--place-to-save",type=click.Path())
@click.option("--dry-run/--no-dry-run",default=False)
def remove_bigquery_cache_files(where, ignore_what,start_index,end_index,place_to_save,dry_run):
    if place_to_save is None:
        place_to_save = f"/tmp/{uuid.uuid4()}"
    if end_index is None:
        end_index = start_index+1
    files_ = set()
    for root, dirs, files in os.walk(".", topdown=False):
        should_skip = False
        for iw in ignore_what:
            if iw in root:
                should_skip = True
                break
        if should_skip:
            continue
        for name in files:
            name = path.realpath(path.abspath(path.join(root, name)))
            if path.basename(name) == "bigquery_cache.db" and path.isfile(name):
                files_.add(name)
    df = pd.DataFrame({"files": list(files_)})
    df["size_bytes"] = df.files.apply(path.getsize)
    df["human_size"] = df.size_bytes.apply(_sizeof_fmt)
    df["modification_time"] = df.files.apply(lambda p:datetime.fromtimestamp(path.getmtime(p)))
    df["files"] = df["files"].apply(lambda p:path.relpath(p,where))
    df = df.sort_values(by="size_bytes",ascending=False)
    click.echo(df)
    to_remove = df.to_dict(orient='records')[start_index:end_index]
    click.echo(f"to remove: {to_remove}")
    if not dry_run:
        os.system(f"rm -rf {place_to_save} && mkdir -p {place_to_save}")

        manifest = []
        for r in tqdm(to_remove):
            zip_fn = f"{uuid.uuid4()}.zip"
            os.system(f"zip -9 {path.join(place_to_save,zip_fn)} {r['files']}")
            os.system(f"rm -rf {r['files']}")
            manifest.append({**r,"zip_fn":zip_fn,"modification_time":r["modification_time"].isoformat()})
        with open(path.join(place_to_save,"MANIFEST.json"),"w") as f:
            json.dump(manifest,f)
        click.echo(f"place_to_save: {place_to_save}")


if __name__ == "__main__":
    remove_bigquery_cache_files()
