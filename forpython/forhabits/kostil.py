#!/usr/bin/env python3
from pymongo import MongoClient
from datetime import datetime
import json
import re
from pandas import DataFrame
import click
import logging


#global const's
_NOT_SHOW_FIELDS = ["_id","enabled","delaymin","info","checklist"]
_WEEKDAYS = ["mon","tue","wed","thu","fri","sat","sun"]
#global var's
#procedures
def task_predicate(task,date,**kwargs):
    weekday = _WEEKDAYS[date.weekday()]
    task_cronline = task["cronline"].split(" ")
    days = [s.lower() for s in task_cronline[4].split(",")]
    if "debug" in kwargs:
        kwargs["debug"].add(tuple(days))
    if not (task["enabled"] and task["onFailed"]!="remove" and task_cronline[2]=="*") : # #and task["cronline"].endswith("* * *")
        return False
    return weekday in days or "*" in days
@click.command()
@click.option("-d","--date", type=click.DateTime(formats=["%Y-%m-%d"]),multiple=True)
@click.option("--debug",is_flag=True)
def kostil(date,debug=False):
    if debug:
        logging.basicConfig(level=logging.DEBUG)
    if len(date)==0:
        date = (datetime.now().date(),)
    local_client = MongoClient('localhost', 27017)
    coll = local_client.admin.passwords
    doc = coll.find_one({"key":"MONGOMLAB"})
    mongopass = doc["value"]
    logging.info(f"mongopass: {mongopass}")
    client = MongoClient(f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
    task_data_coll = client.logistics["alex.habits"]

    for d in date:
        _debug = set()
        logger = logging.getLogger("kostil")
        tasks = [{k:v for k,v in task.items() if k not in _NOT_SHOW_FIELDS} for task in task_data_coll.find() if task_predicate(task,d,debug=_debug)]

        logger.info(f"\n{DataFrame(tasks)}")
        logger.info(f"d: {d.strftime('%Y-%m-%d')}")
        logger.debug(f"_debug: {_debug}")
        for t in tasks:
            print(f"{d.strftime('%Y-%m-%d')}: {t['name']}")

#main
if __name__=="__main__":
    kostil()
