#!/usr/bin/env python3
from pymongo import MongoClient
from datetime import datetime, timedelta
import json
import re
from pandas import DataFrame, concat
import click
import logging
from croniter import croniter
from uuid import uuid4


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
def kostil(debug=False):
    if debug:
        logging.basicConfig(level=logging.DEBUG)


@kostil.command()
@click.argument("task")
def done(task):
    df = DataFrame(
        [{"task": task, "uuid": uuid4(), "datetime": datetime.now()}])
    print(df.to_csv(sep="\t", index=False, header=None))


@kostil.command()
@click.option("-d", "--date", type=click.DateTime(formats=["%Y-%m-%d"]), multiple=True)
@click.option("-o", "--only_permanent_habits", is_flag=True)
@click.option("--mongopass", envvar="MONGO_PASS")
def list(date, mongopass, debug=False, only_permanent_habits=False):
    assert mongopass is not None
    if len(date) == 0:
        date = (datetime.now(),)
    logging.info(f"mongopass: {mongopass}")
    client = MongoClient(
        f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
    task_data_coll = client.logistics["alex.habits"]

    res = []
    for d in date:
        _debug = set()
        logger = logging.getLogger("kostil")
        tasks = [{k: v for k, v in task.items() if k not in _NOT_SHOW_FIELDS}
                 for task in task_data_coll.find() if task_predicate(task, d, debug=_debug, only_permanent_habits=only_permanent_habits)]

        logger.info(f"\n{DataFrame(tasks)}")
        logger.info(f"d: {d.strftime('%Y-%m-%d')}")
        logger.debug(f"_debug: {_debug}")
        res.append(DataFrame([{"name": f"{d.strftime('%Y-%m-%d')}: {t['name']}",
                               "creation date": d.strftime('%Y-%m-%d')} for t in tasks]))

    print(concat(res).to_csv(sep="\t",index=None,header=None))


# main
if __name__ == "__main__":
    kostil()
