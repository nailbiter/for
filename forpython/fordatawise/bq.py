#!/usr/bin/env python3
"""===============================================================================

        FILE: ./bq.py

       USAGE: ././bq.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-02-09T16:39:06.101759
    REVISION: ---

==============================================================================="""

import click
from google.cloud import bigquery
import os
from jinja2 import Template
import math
import subprocess
import json

_UNIT_LIST = list(zip(['bytes', 'kB', 'MB', 'GB', 'TB', 'PB'], [0, 0, 1, 2, 2, 2]))


@click.group()
def bq():
    pass


@bq.command()
@click.argument("table")
@click.option("-a", "--authuser", type=int, envvar="AUTHUSER")
@click.option("-p", "--project", default="dtws-rdemo-dev", envvar="GCLOUD_PROJECT")
def open(table, authuser, project):
    pdt = tuple(table.split("."))
    pdt = {k: v for k, v in zip("pdt", pdt)}
    print(", ".join([f"{k}: {v}"for k, v in pdt.items()]))
    url = Template("""https://console.cloud.google.com/bigquery?utm_source=bqui&utm_medium=link&utm_campaign=classic&project={{project}}&folder=&organizationId={%for k,v in pdt.items()%}&{{k}}={{v}}{%endfor%}&page=table""").render({
        "pdt": pdt,
        "project": project
    })
    if authuser is not None:
        url = f"{url}&authuser={authuser}"
    cmd = f"open '{url}'"
    print(f"> {cmd}")
    os.system(cmd)


@bq.command()
@click.argument("table_name")
@click.option("-i", "--index", type=int, default=0)
@click.option("--dry-run/--no-dry-run", default=True)
@click.option("-s", "--sort", nargs=2, multiple=True)
def edit(table_name, index, dry_run, sort):
    client = bigquery.Client()
    df = client.query(
        f"select * from `{table_name}`").to_dataframe(progress_bar_type="tqdm")
    if len(sort) > 0:
        df = df.sort_values(by=[fn for fn, _ in sort],
                            ascending=[bool(asc) for _, asc in sort], ignore_index=True)
    click.echo(df)
    click.echo(f"going to drop {df.to_dict(orient='records')[index]}")
    if not dry_run:
        df = df.drop([index])
        client.load_table_from_dataframe(dataframe=df, destination=table_name,
                                         job_config=bigquery.job.LoadJobConfig(write_disposition="WRITE_TRUNCATE"))
    else:
        click.echo("dry_run")


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


@bq.command()
@click.argument("table_name")
def show_size(table_name):
    pdt = tuple(table_name.split("."))
    assert len(pdt) == 3
    s = json.loads(subprocess.getoutput(f"bq show --format=json {pdt[0]}:{pdt[1]}.{pdt[2]}"))
    os.system(f"bq show {pdt[0]}:{pdt[1]}.{pdt[2]}")
    click.echo(_sizeof_fmt(int(s["numBytes"])))


if __name__ == "__main__":
    bq()
