#!/usr/bin/env python3
import click
from os import system


#procedures
@click.command()
@click.argument("table")
def bq_open(table):
    p,d,t = tuple(table.split("."))
    print(f"p: {p}, d: {d}, t: {t}")
    cmd = f"open 'https://console.cloud.google.com/bigquery?utm_source=bqui&utm_medium=link&utm_campaign=classic&project=dtws-rdemo-dev&folder=&organizationId=&p={p}&d={d}&t={t}&page=table'"
    print(f"> {cmd}")
    system(cmd)

#main
if __name__=="__main__":
    bq_open()
