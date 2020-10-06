#!/usr/bin/env python3
from pymongo import MongoClient
from datetime import datetime, timedelta
import json
import numpy as np
import re
from pandas import DataFrame, concat, isna
import click
import logging
from croniter import croniter
from uuid import uuid4
from pymongo import MongoClient


# global const's
_NOT_SHOW_FIELDS = ["_id", "enabled", "delaymin", "info", "checklist"]
_WEEKDAYS = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"]
# global var's
# procedures


def task_predicate(task, date, **kwargs):
    _logger = logging.getLogger("task_predicate")
    _logger.info(f"date: {date}")
    _logger.info(f"task: {task}")
    if not task["enabled"]:
        return False
    it = croniter(task["cronline"], date-timedelta(days=1))
    _dt = it.get_next(datetime)
    while _dt.date() < date.date():
        _dt = it.get_next(datetime)
    _logger.info(f"{task['name']} => {_dt}")
    if kwargs["only_permanent_habits"]:
        if task["onFailed"] == "remove":
            return False
    return _dt.date() == date.date()


@click.group()
@click.option("--debug", is_flag=True)
def cli(debug=False):
    if debug:
        logging.basicConfig(level=logging.DEBUG)


@cli.command()
@click.argument("task")
@click.option("--dry_run/--no-dry_run", default=False)
def done(task,dry_run):
    tasks_df = _get_tasks()
    task_obj = tasks_df[[name==task for name in tasks_df["name"]]].to_dict(orient="records")[0]
    obj = {"task_name": task, "task_id": task_obj["_id"], "datetime": datetime.now()}
    print(f"done obj: {obj}")
    if not dry_run:
        MongoClient().habits.habits_done.insert_one(obj)


@cli.command()
@click.option("-d", "--date", type=click.DateTime(formats=["%Y-%m-%d"]), multiple=True)
@click.option("-o", "--only_permanent_habits", is_flag=True)
@click.option("--mongopass", envvar="MONGO_PASS", required=True)
@click.option("--dry_run/--no-dry_run", default=False)
def add(date, mongopass, dry_run, debug=False, only_permanent_habits=False):
    if len(date) == 0:
        date = (datetime.now(),)
    logging.info(f"mongopass: {mongopass}")
    client = MongoClient(
        f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
    task_data_coll = client.logistics["alex.habits"]

    res = []
    for d in date:
        _debug = set()
        logger = logging.getLogger("cli")
        tasks = [{k: v for k, v in task.items() if k not in _NOT_SHOW_FIELDS}
                 for task in task_data_coll.find() if task_predicate(task, d, debug=_debug, only_permanent_habits=only_permanent_habits)]

        logger.info(f"\n{DataFrame(tasks)}")
        logger.info(f"d: {d.strftime('%Y-%m-%d')}")
        logger.debug(f"_debug: {_debug}")
        res.append(DataFrame([{"name": t["name"],
                               "creation date": d.strftime('%Y-%m-%d')} for t in tasks]))

    # print(concat(res).to_csv(sep="\t",index=None,header=None))
    res = concat(res)
    print(res)

    if not dry_run:
        # TODO
        pass

def _get_tasks():
    tasks_df = DataFrame(MongoClient().habits.habits.find()).set_index("_id")
    habits_done_df = DataFrame(MongoClient().habits.habits_done.find()).set_index("task_id")
    tasks_df = tasks_df.join(habits_done_df)
    tasks_df = tasks_df[[isna(datetime) for datetime in tasks_df["datetime"]]]
    tasks_df = tasks_df.drop(columns=["_id"]).reset_index()
    return tasks_df

@cli.command()
def list():
    tasks_df = _get_tasks()
    tasks_df = tasks_df.drop(columns=["_id","datetime","task_name", "creation date"])
    tasks_df["count"] = 1
    df = tasks_df.groupby("name").aggregate({"count":np.sum})

    print(df.to_string())
    print(f"sum: {sum(df['count'])}")


# main
if __name__ == "__main__":
    cli()
