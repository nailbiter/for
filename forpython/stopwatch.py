#!/usr/bin/env python3
import readline
import logging
import click
import json
from os.path import isfile, split
import pandas as pd
from collections import namedtuple
from datetime import datetime, timedelta

# global const's
_STORE_FN = ".stopwatch.json"
# global var's
Stopwatches = []
# procedures
class Stopwatch(object):
    def __init__(self,name,start=None,is_running=False,runtime_seconds=0.0):
        if start is None:
            start = datetime.now()
        self._d = dict(name=name,start=start,is_running=is_running,runtime_seconds=runtime_seconds)
        self._logger = logging.getLogger(f"Stopwatch({name})")
    @property
    def start(self):
        return self._d["start"]
    @start.setter
    def start(self,start):
        self._d["start"] = start
    @property
    def is_running(self):
        return self._d["is_running"]
    @is_running.setter
    def is_running(self,is_running):
        self._d["is_running"] = is_running
    @property
    def runtime_seconds(self):
        return self._d["runtime_seconds"]
    @runtime_seconds.setter
    def runtime_seconds(self,runtime_seconds):
        self._d["runtime_seconds"] = runtime_seconds
    @property
    def name(self):
        return self._d["name"]
    def to_json_dict(self):
        self._logger.info(f"d: {self._d}")
        res = self._d
        res["start"] = res["start"].timestamp()
        return res
    @classmethod
    def from_json_dict(cls,**d):
        return cls(**{**d,"start":datetime.fromtimestamp(d["start"])})



@click.group()
@click.option("--debug",is_flag=True)
def cli(debug=False):
    if debug:
        logging.basicConfig(level=logging.DEBUG)

@cli.resultcallback()
def process_result(*_,**__):
    logger = logging.getLogger("resultcallback")
    with open(fn,"w") as f:
        logger.info(f"saving {fn}")
        logger.info(Stopwatches)
        json.dump({"stopwatches":[sw.to_json_dict() for sw in Stopwatches.values()]},f)

@cli.command()
@click.argument("name")
def stop(name):
    stopwatches = Stopwatches
    stopwatch = stopwatches[name]
    if stopwatch.is_running:
        stopwatch.is_running = False
        now = datetime.now()
        stopwatch.runtime_seconds += (now-stopwatch.start).total_seconds()

@cli.command()
@click.argument("name")
def resume(name):
    stopwatch = Stopwatches[name]
    if not stopwatch.is_running:
        stopwatch.is_running = True
        stopwatch.start = datetime.now()

@cli.command()
@click.argument("name")
def create(name):
    assert name not in [sw.name for sw in Stopwatches.values()]
    Stopwatches[name] = Stopwatch(name=name)

@cli.command()
def list():
    logger = logging.getLogger("list")
    stopwatches = Stopwatches
    now = datetime.now()
    df = pd.DataFrame([{"name":sw.name,"time":str(timedelta(seconds=sw.runtime_seconds+((now-sw.start).seconds if sw.is_running else 0.0))),"is_running":sw.is_running}
        for sw 
        in stopwatches.values()])
    df = df.set_index("name").sort_index().sort_values(by="is_running")
    print(df)

@cli.command()
@click.argument("name")
def remove(name):
    del Stopwatches[name]

@cli.command()
@click.argument("name")
def reset(name):
    Stopwatches[name].runtime_seconds = 0.0
    Stopwatches[name].start = datetime.now()

# main
fn = f"{split(__file__)[0]}/{_STORE_FN}"
logging.info(f"fn: {fn}")
if isfile(fn):
    with open(fn) as f:
        store = json.load(f)
        Stopwatches = {sw["name"]:Stopwatch.from_json_dict(**sw) for sw in store["stopwatches"]}

if __name__=="__main__":
    cli()
