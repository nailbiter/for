#!/usr/bin/env python3

import click
import pymongo
import pandas as pd
from pytz import timezone
from bson.codec_options import CodecOptions
from bson.objectid import ObjectId
import matplotlib.pyplot as plt
from pymongo import MongoClient
from datetime import datetime, timedelta, date
import logging
import json

# global const's
WEEKS = 8
TIMESTAMPS_PER_HOUR = 2


def _get_mongo_client():
    local_client = MongoClient('localhost', 27017)
    coll = local_client.admin.passwords
    doc = coll.find_one({"key": "MONGOMLAB"})
    mongopass = doc["value"]
    client = MongoClient(
        f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics")
    return client


class DateFilter():
    def __init__(self, mode, date):
        self._mode = mode
        self._date = date

    def __call__(self, dt):
        _now = self._date
        if self._mode == "daily":
            return dt.date() == _now.date()
        elif self._mode == "weekly":
            _, _, wd = _now.isocalendar()
            week_start = _now-timedelta(days=wd-1)
            return dt.date() >= week_start.date()
        else:
            raise NotImplementedError


def json_serial(obj):
    if isinstance(obj, (datetime, date)):
        return obj.isoformat()
    elif isinstance(obj, ObjectId):
        return f"ObjectId({obj})"
    raise TypeError(f"Type {type(obj)} not serializable")


class _TagsRetriever():
    def __init__(self, prefix):
        self._prefix = prefix
        self._logger = logging.getLogger("_TagsRetriever")

    def __call__(self, tags):
        # self._logger.info(list(tags))
        if type(tags) is not list:
            return None
        filtered = [tag[len(self._prefix):]
                    for tag in tags if tag.startswith(self._prefix)]
        if filtered:
            return filtered[0]
        else:
            return None


@click.command()
@click.option("-m", "--mode", type=click.Choice(["daily", "weekly"]), default="daily")
@click.option("-d", "--date", type=click.DateTime(["%Y-%m-%d"]))
def printEngageTable(mode, date):
    if date is None:
        date = datetime.now()
    client = _get_mongo_client()
    _logger = logging.getLogger("printEngageTable")

    date_filter = DateFilter(mode, date)
    taskLog = pd.DataFrame(client.logistics["alex.taskLog"].with_options(codec_options=CodecOptions(
        tz_aware=True, tzinfo=timezone('Asia/Tokyo'))).find({"message": "add engage"}))
    _df = taskLog[[date_filter(d) for d in taskLog["date"]]]
    _df = pd.DataFrame([{"date": r["date"], **r["obj"]}
                        for r in _df.to_dict(orient="records")])
    _df = _df.drop(columns=["idList", "labels"])
    _df["datetime"] = _df["date"]
    _df["date"] = _df["date"].apply(lambda d: d.date())
    _df = _df.sort_values(by="datetime")

    _list = []
    for date, chunk in _df.groupby("date"):
        _chunk = chunk.copy()
        _chunk["next_datetime"] = _chunk["datetime"].shift(-1)
        _chunk = _chunk[[not pd.isna(nd) for nd in _chunk["next_datetime"]]]
        _chunk["duration_hours"] = (
            _chunk["next_datetime"] - _chunk["datetime"])
        _chunk["duration_hours"] = _chunk["duration_hours"].apply(
            lambda td: td.to_pytimedelta().total_seconds()/60/60)
        _list.append(_chunk)
    _df = pd.concat(_list)

    _df = _df[[n not in ["lunch", "off-work"] for n in _df["name"]]]
    _taskData = pd.DataFrame(
        client.logistics["alex.taskData"].find()).set_index("task_id")
    _df = _df.set_index("id").join(_taskData, how="left")
    _logger.info(
        f"_df: {json.dumps(_df.reset_index().to_dict(orient='records'),indent=2,default=json_serial,ensure_ascii=False)}")

    if mode == "daily":
        res = pd.DataFrame({
            "日付": _df["date"],
            "名前": "Leon",
            "開始": _df["datetime"].apply(lambda d: d.strftime("%H:%M")),
            "終了": _df["next_datetime"].apply(lambda d: d.strftime("%H:%M")),
            "案件": _df["tags"].apply(_TagsRetriever("_time_table:anken:")),
            "タスク": _df["tags"].apply(_TagsRetriever("_time_table:task:")),
            "内容": [f"=HYPERLINK(\"{shortUrl}\",\"{name}\")" for name, shortUrl in zip(_df["name"], _df["shortUrl"])]
        })
        print(res.sort_values(by="開始").to_csv(
            index=False, sep="\t", header=False))
    elif mode == "weekly":
        print(_df.groupby("name").sum().sort_values(
            by="duration", ascending=False))
    else:
        raise NotImplementedError


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    printEngageTable()
