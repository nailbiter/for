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
from tqdm import tqdm
import pandas as pd
import logging
import concurrent.futures
from _bq import CopyJob, list_tables, dates_from_to
from datetime import datetime, timedelta
import numpy as np
import itertools

_UNIT_LIST = list(
    zip(['bytes', 'kB', 'MB', 'GB', 'TB', 'PB'], [0, 0, 1, 2, 2, 2]))


@click.group()
@click.option("--debug/--no-debug", default=False)
def bq(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


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
        click.echo("no dry_run")
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
    s = json.loads(subprocess.getoutput(
        f"bq show --format=json {pdt[0]}:{pdt[1]}.{pdt[2]}"))
    os.system(f"bq show {pdt[0]}:{pdt[1]}.{pdt[2]}")
    click.echo(_sizeof_fmt(int(s["numBytes"])))


@bq.command()
@click.argument("sources", nargs=-1)
@click.argument("destination")
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--only-print-commands/--no-only-print-commands", default=False)
@click.option("--post-verify/--no-post-verify", default=True)
@click.option("--before")
@click.option("--after")
def cp(sources, destination, dry_run, only_print_commands, before, after, post_verify):
    client = bigquery.Client()
    _sources = []
    for source in sources:
        source_split = source.split(".")
        assert len(source_split) == 3
        if source.endswith("*"):
            dataset_name = ".".join(source_split[:2])
            _sources.extend([(f"{dataset_name}.{t.table_id}", t.table_id[len(source_split[-1][:-1]):]) for t in client.list_tables(
                dataset_name) if t.table_id.startswith(source_split[-1][:-1])])
        else:
            _sources.append((source, ""))
    sources = _sources
    if before is not None:
        sources = [(_, suffix) for _, suffix in sources if suffix <= before]
    if after is not None:
        sources = [(_, suffix) for _, suffix in sources if suffix >= after]
    click.echo(f"{sources} => {destination}")
    copy_job = CopyJob(destination, dry_run, client)
    if not only_print_commands:
        for source, suffix in tqdm(sources):
            copy_job(source, suffix)
    else:
        for source, suffix in (sources):
            copy_job(source, suffix, only_print=True)
    if post_verify:
        for source, suffix in (sources):
            copy_job.verify(source, suffix)


@bq.command()
@click.argument("prefix")
@click.option("-s", "--start-date", type=click.DateTime(["%Y-%m-%d"]))
@click.option("-e", "--end-date", type=click.DateTime(["%Y-%m-%d"]))
@click.option("--compress/--no-compress", default=True)
@click.option("--absent/--no-absent",default=False)
@click.option("--show-table-stats/--no-show-table-stats",default=False)
def show_tables(prefix, start_date, end_date, compress,absent,show_table_stats):
    client = bigquery.Client()
    table_suffices = list_tables(client, prefix)
    if len(table_suffices) == 0:
        click.echo("none found")
        return
    if start_date is None:
        start_date = datetime.strptime(min(table_suffices), "%Y%m%d")
    if end_date is None:
        end_date = datetime.strptime(max(table_suffices), "%Y%m%d")
    table_suffices = filter(lambda s: start_date.strftime(
        "%Y%m%d") <= s <= end_date.strftime("%Y%m%d"), table_suffices)
    if absent:
        table_suffices = set(dates_from_to(*map(lambda d:d.strftime("%Y%m%d"),[start_date,end_date]))) - set(table_suffices)
        table_suffices = list(table_suffices)
        if len(table_suffices) == 0:
            click.echo("all present")
            return
    table_suffices = list(sorted(table_suffices))
    _TABLE_PROPERTIES = {
        "num_rows":None,        
        "size_gb":lambda t:t.num_bytes/(2**30),
    }
    _AGGREGATIONS = {
        **{k:getattr(np,k) for k in ["min","max","sum"]},
    }
    if compress:
        compressed = [{k:datetime.strptime(table_suffices[0], "%Y%m%d") for k in ["start","end"]}]
        for ts in table_suffices[1:]:
            if (datetime.strptime(ts, "%Y%m%d")-compressed[-1]["end"]).days == 1:
                compressed[-1]["end"] += timedelta(days=1)
            else:
                compressed.append({k:datetime.strptime(ts, "%Y%m%d") for k in ["start","end"]})
        if show_table_stats:
            assert not absent, "`show_table_stats` and `absent` are mutually exclusive"
            for d in compressed:
                tns = [client.get_table(prefix+ts) for ts in tqdm(list(dates_from_to(*[d[k].strftime("%Y%m%d") for k in ["start","end"]])))]
                for (fn,ff),(k,v) in itertools.product(_TABLE_PROPERTIES.items(),_AGGREGATIONS.items()):
                    x = list(map(lambda tn:getattr(tn,fn) if ff is None else ff(tn),tns))
                    d[f"{k}_{fn}"] = v(x)
        click.echo(pd.DataFrame(compressed).to_string(index=None))
    else:
        click.echo(pd.DataFrame({"tn": table_suffices}).to_string(index=None))


if __name__ == "__main__":
    bq()
