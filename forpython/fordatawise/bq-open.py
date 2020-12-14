#!/usr/bin/env python3
import click
from os import system


# procedures
@click.command()
@click.argument("table")
@click.option("-a", "--authuser", type=int)
@click.option("-p", "--project", default="dtws-rdemo-dev")
def bq_open(table, authuser,project):
    p, d, t = tuple(table.split("."))
    print(f"p: {p}, d: {d}, t: {t}")
    url = f"https://console.cloud.google.com/bigquery?utm_source=bqui&utm_medium=link&utm_campaign=classic&project={project}&folder=&organizationId=&p={p}&d={d}&t={t}&page=table"
    if authuser is not None:
        url = f"{url}&authuser={authuser}"
    cmd = f"open '{url}'"
    print(f"> {cmd}")
    system(cmd)


# main
if __name__ == "__main__":
    bq_open()
