#!/usr/bin/env python3
import argparse
import pymongo
import pandas as pd
from pymongo import MongoClient
import click
from itertools import product
from os.path import splitext, isfile
import json
import uuid
import subprocess
import os


# global const's
PREFIXES = {"task": "_time_table:task:", "anken": "_time_table:anken:"}
# procedures
_KEY_VALUES = {
    "anken": ['データ収集/天気', 'アルゴリズム改善', 'その他', '推定アルゴリズム/性別推定', 'Datawise Retail', 'covid19'],
    "task": ['その他', '分析・検討・調査', 'レビュー', '資料作成', '会議', 'コーディング']
}
for k in ["anken", "task"]:
    if isfile(f".{k}.json"):
        with open(f".{k}.json") as f:
            _KEY_VALUES[k] = json.load(f)[k]


@click.group()
def cli():
    pass


@cli.command()
@click.argument("fn", type=click.Path(exists=True))
def update(fn):
    assert splitext(fn)[1] == ".csv"
    df = pd.read_csv(fn)
    for k, v in {"anken": "案件", "task": "タスク"}.items():
        _x = sorted([x for x in df[v].unique() if not pd.isna(x)])
        print(f"{k}: {_x}")
        with open(f".{k}.json", "w") as f:
            json.dump({k: _x}, f, ensure_ascii=False, indent=2)


def _get_fzf_selection(key):
    values = _KEY_VALUES[key]
    #FIXME: do this in-memory
    fn = f"/tmp/{uuid.uuid4()}.txt"
    with open(fn,"w") as f:
        for i,value in enumerate(values):
            f.write(f"{i}. {value}\n")

    fn2 = f"/tmp/{uuid.uuid4()}.txt"
    os.system(f"cat {fn} | fzf --header={key} --no-sort > {fn2}")
    with open(fn2) as f:
        res = f.read()
    res = res.strip()
    assert "." in res
    res = res.split(".")[0]
    return int(res)


@cli.command()
@click.argument("task_id", type=str)
@click.option("--anken", type=click.IntRange(0, len(_KEY_VALUES['anken'])-1), help="; ".join([f"{i}. {n}" for i, n in enumerate(_KEY_VALUES["anken"])]))
@click.option("--task", type=click.IntRange(0, len(_KEY_VALUES['task'])-1), help="; ".join([f"{i}. {n}" for i, n in enumerate(_KEY_VALUES["task"])]))
@click.option("--test/--no-test", default=False)
def kostil(task_id, test, **kwargs):
    print(f"hi: {task_id}")
#    assert([k for k, v in kwargs.items() if v is not None]
#           ), "at least one of `anken` or `task` should be given"
    for k in ["anken", "task"]:
        if kwargs[k] is None:
            res = _get_fzf_selection(k)
#            print(f"res: \"{res}\"")
#            exit(1)
            kwargs[k] = res

    local_client = MongoClient('localhost', 27017)
    coll = local_client.admin.passwords
    doc = coll.find_one({"key": "MONGOMLAB"})
    mongopass = doc["value"]
    client = MongoClient(
        f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
    task_data_coll = client.logistics["alex.taskData"]

    repl = {}
    doc = task_data_coll.find_one(dict(task_id=task_id))
    if doc is not None:
        for kv, t in product(PREFIXES.items(), doc["tags"]):
            k, v = kv
            if t.startswith(v):
                repl[k] = t[len(v):]
    for k, v in kwargs.items():
        if v is not None:
            repl[k] = _KEY_VALUES[k][v]

    repl = [PREFIXES[k]+v for k, v in repl.items()]
    print(f"repl: {repl}")
    if not test:
        task_data_coll.replace_one(dict(task_id=task_id), {
                                   "tags": repl, "task_id": task_id}, upsert=True)
    else:
        print("skip because of test")


# main
if __name__ == "__main__":
    cli()
