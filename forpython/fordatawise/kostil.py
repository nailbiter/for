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


def _get_fzf_selection(key,header=None):
    values = _KEY_VALUES[key]
    #FIXME: do this in-memory
    fn = f"/tmp/{uuid.uuid4()}.txt"
    with open(fn,"w") as f:
        for i,value in enumerate(values):
            f.write(f"{i}. {value}\n")

    fn2 = f"/tmp/{uuid.uuid4()}.txt"
    os.system(f"cat {fn} | fzf --header=\"{key if header is None else header}\" --no-sort > {fn2}")
    with open(fn2) as f:
        res = f.read()
    res = res.strip()
    assert "." in res
    res = res.split(".")[0]
    return int(res)


@cli.command()
@click.option("--task-id")
@click.option("--task-name")
@click.option("--anken", type=click.IntRange(0, len(_KEY_VALUES['anken'])-1), help="; ".join([f"{i}. {n}" for i, n in enumerate(_KEY_VALUES["anken"])]))
@click.option("--task", type=click.IntRange(0, len(_KEY_VALUES['task'])-1), help="; ".join([f"{i}. {n}" for i, n in enumerate(_KEY_VALUES["task"])]))
@click.option("--test/--no-test", default=False)
@click.option("--unlabeled-tasks-dump-file",type=click.Path(),envvar="UNLABELED_TASKS_DUMP_FILE")
def kostil(task_id,task_name,unlabeled_tasks_dump_file, test, **kwargs):
    if task_id is None:
        assert unlabeled_tasks_dump_file is not None
        with open(unlabeled_tasks_dump_file) as f:
            task_ids = json.load(f)
    else:
        task_ids = {task_id:task_name}
    for task_id,task_name in task_ids.items():
        print(f"hi: {task_id}")
        kwargs_ = {**kwargs}
        for k in ["anken", "task"]:
            if kwargs_[k] is None:
                res = _get_fzf_selection(k,header=task_name)
                kwargs_[k] = res

        local_client = MongoClient('localhost', 27017)
        coll = local_client.admin.passwords
        doc = coll.find_one({"key": "MONGOMLAB"})
        mongopass = doc["value"]
        client = MongoClient(
            f"mongodb+srv://nailbiter:{mongopass}@cluster0.gaq9o.mongodb.net/logistics?authSource=admin&replicaSet=atlas-1372ty-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")
        task_data_coll = client.logistics["alex.taskData"]

        repl = {}
        doc = task_data_coll.find_one(dict(task_id=task_id))
        if doc is not None:
            for kv, t in product(PREFIXES.items(), doc["tags"]):
                k, v = kv
                if t.startswith(v):
                    repl[k] = t[len(v):]
        for k, v in kwargs_.items():
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
