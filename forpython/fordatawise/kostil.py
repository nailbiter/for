#!/usr/bin/env python3
import argparse
import pymongo
import pandas as pd
from pymongo import MongoClient
import click
from itertools import product


#global const's
PREFIXES= {"task":"_time_table:task:", "anken":"_time_table:anken:"}
KEY_VALUES = {
        "anken":['データ収集/天気', 'アルゴリズム改善', 'その他', '推定アルゴリズム/性別推定', 'Datawise Retail', 'covid19'],
        "task":['その他', '分析・検討・調査', 'レビュー', '資料作成', '会議', 'コーディング']
        }
#procedures
@click.command()
@click.argument("task_id",type=str)
@click.option("--anken",type=click.IntRange(0,len(KEY_VALUES['anken'])-1),help="; ".join([f"{i}. {n}" for i,n in enumerate(KEY_VALUES["anken"])]))
@click.option("--task",type=click.IntRange(0,len(KEY_VALUES['task'])-1),help="; ".join([f"{i}. {n}" for i,n in enumerate(KEY_VALUES["task"])]))
@click.option("--test/--no-test",default=False)
def kostil(task_id, test, **kwargs):
    print(f"hi: {task_id}")
    assert([k for k,v in kwargs.items() if v is not None]), "at least one of `anken` or `task` should be given"

    local_client = MongoClient('localhost', 27017)
    coll = local_client.admin.passwords
    doc = coll.find_one({"key":"MONGOMLAB"})
    mongopass = doc["value"]
    client = MongoClient(f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
    task_data_coll = client.logistics["alex.taskData"]

    repl = {}
    doc = task_data_coll.find_one(dict(task_id=task_id))
    if doc is not None:
        for kv,t in product(PREFIXES.items(),doc["tags"]):
            k,v = kv
            if t.startswith(v):
                repl[k] = t[len(v):]
    for k,v in kwargs.items():
        if v is not None:
            repl[k] = KEY_VALUES[k][v]
    
    repl = [PREFIXES[k]+v for k,v in repl.items()]
    print(f"repl: {repl}")
    if not test:
        task_data_coll.replace_one(dict(task_id=task_id), {"tags":repl,"task_id":task_id}, upsert=True)
    else:
        print("skip because of test")
#main
kostil()
