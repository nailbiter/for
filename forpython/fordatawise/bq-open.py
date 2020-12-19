#!/usr/bin/env python3
import click
from os import system
from jinja2 import Template


# procedures
@click.command()
@click.argument("table")
@click.option("-a", "--authuser", type=int, envvar="AUTHUSER")
@click.option("-p", "--project", default="dtws-rdemo-dev", envvar="GCLOUD_PROJECT")
def bq_open(table, authuser, project):
    pdt = tuple(table.split("."))
    pdt = {k: v for k, v in zip("pdt", pdt)}
    print(", ".join([f"{k}: {v}"for k, v in pdt.items()]))
    url = Template("""https://console.cloud.google.com/bigquery?utm_source=bqui&utm_medium=link&utm_campaign=classic&project={{project}}&folder=&organizationId={%for k,v in pdt.items()%}&{{k}}={{v}}{%endfor%}&page=table""").render({
        "pdt": pdt,
        "project":project
    })
    if authuser is not None:
        url = f"{url}&authuser={authuser}"
    cmd = f"open '{url}'"
    print(f"> {cmd}")
    system(cmd)


# main
if __name__ == "__main__":
    bq_open()
