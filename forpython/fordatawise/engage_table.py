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

def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f

# global const's
WEEKS = 8
TIMESTAMPS_PER_HOUR = 2
TIMEZONE = timezone('Asia/Tokyo')


def _get_mongo_client(mongo_pass):
    return MongoClient(
        f"mongodb+srv://nailbiter:{mongo_pass}@cluster0.gaq9o.mongodb.net/logistics?authSource=admin&replicaSet=atlas-1372ty-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")


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

@_add_logger
def _get_tasks(mongo_pass,mode="daily",date=datetime.now(),unlabeled_tasks_dump_file=None,logger=None):
    client = _get_mongo_client(mongo_pass)

    date_filter = DateFilter(mode, date)
    taskLog = pd.DataFrame(client.logistics["alex.taskLog"].with_options(codec_options=CodecOptions(
        tz_aware=True, tzinfo=TIMEZONE)).find({"message": "add engage"}))
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
        if _chunk.iloc[-1, :].name != "off-work":
            _now = datetime.now(tz=TIMEZONE)
            _chunk = _chunk.append(
                {"name": "off-work", "datetime": _now, "date": _now.date()}, ignore_index=True)
            #logger.info(f"chunk: \n{_chunk.to_csv()}")
        _chunk["next_datetime"] = _chunk["datetime"].shift(-1)
        _chunk = _chunk[[not pd.isna(nd) for nd in _chunk["next_datetime"]]]
        _chunk["duration_hours"] = (
            _chunk["next_datetime"] - _chunk["datetime"])
        _chunk["duration_hours"] = _chunk["duration_hours"].apply(
            lambda td: td.to_pytimedelta().total_seconds()/60/60)
        #_chunk = _chunk.sort_values(by="datetime")
        _list.append(_chunk)
    _df = pd.concat(_list)

    _df = _df[[n not in ["lunch", "off-work"] for n in _df["name"]]]
    logger.info(f"_df: {list(_df)}")
    _taskData = pd.DataFrame(
        client.logistics["alex.taskData"].find()).set_index("task_id")
    _df = _df.set_index("id").join(
        _taskData, how="left").sort_values(by="datetime")
    _df_wo_index = _df.reset_index()
    logger.info(
        f"_df: {json.dumps(_df_wo_index.to_dict(orient='records'),indent=2,default=json_serial,ensure_ascii=False)}")
    if "id" in _df_wo_index:
        _df_wo_index = _df_wo_index.rename(columns={"id":"index"})
    _set = {(r["index"], r["name"]) for r in _df_wo_index.to_dict( #FIXME: something's wrong here
        orient="records") if not isinstance(r["tags"], list)}

    if len(_set) > 0:
        logger.warning(_set)
        if unlabeled_tasks_dump_file is not None:
            with open(unlabeled_tasks_dump_file,"w") as f:
                json.dump({idx:name for idx,name in _set},f)
            logger.warning(f"unlabeled tasks dumped to {unlabeled_tasks_dump_file}")    
    else:
        logger.info(_set)

    return _df    

@click.group()
@click.option("--mongo_pass", envvar="MONGO_PASS")
@click.pass_context
def engage_table(ctx, mongo_pass):
    assert mongo_pass is not None
    _logger = logging.getLogger("engage_table")
    _logger.info(f"mongo_pass: {mongo_pass}")
    ctx.ensure_object(dict)
    ctx.obj["mongo_pass"] = mongo_pass
    _logger.info(ctx.obj)


@engage_table.command()
@click.option("-m", "--mode", type=click.Choice(["daily", "weekly"]), default="daily")
@click.option("-d", "--date", type=click.DateTime(["%Y-%m-%d"]))
@click.option("--unlabeled-tasks-dump-file",type=click.Path(),envvar="UNLABELED_TASKS_DUMP_FILE")
@click.pass_context
def print(ctx, mode, date,unlabeled_tasks_dump_file):
    if date is None:
        date = datetime.now()

    _df = _get_tasks(ctx.obj["mongo_pass"],mode,date,unlabeled_tasks_dump_file=unlabeled_tasks_dump_file)

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
        click.echo(res.sort_values(by="開始").to_csv(
            index=False, sep="\t", header=False))
    elif mode == "weekly":
        click.echo(_df.groupby("name").sum().sort_values(
            by="duration_hours", ascending=False))
    else:
        raise NotImplementedError

@engage_table.command()
@click.pass_context
@click.option("-k","--kintai-export-file",type=click.Path(),required=True)
def fix_kintai(ctx,kintai_export_file):
    kintai_df = pd.read_csv(kintai_export_file,encoding="shift_jis")
    kintai_df = kintai_df.set_index("日付").loc[:,["出社","退社"]]
    kintai_df = kintai_df[[pd.isna(x) or pd.isna(y) for x,y in zip(kintai_df["出社"],kintai_df["退社"])]]
    kintai_df = kintai_df.reset_index().rename(columns={"日付":"date"})
    kintai_df.date = kintai_df.date.apply(lambda s:datetime.strptime(s,"%Y-%m-%d").date())
    kintai_df = kintai_df[[d.weekday() not in [5,6] for d in kintai_df.date]]
    kintai_df = kintai_df.set_index("date")
#    click.echo(kintai_df.reset_index().to_csv(index=None))
#    click.echo(kintai_df)

    client = _get_mongo_client(ctx.obj["mongo_pass"])
    taskLog = pd.DataFrame(client.logistics["alex.taskLog"].with_options(codec_options=CodecOptions(
        tz_aware=True, tzinfo=TIMEZONE)).find({"message": "add engage"}))
#    _df = taskLog[[date_filter(d) for d in taskLog["date"]]]
    _df = taskLog
    _df = pd.DataFrame([{"date": r["date"], **r["obj"]}
                        for r in _df.to_dict(orient="records")])
    _df = _df.drop(columns=["idList", "labels"])
    _df["datetime"] = _df["date"]
    _df["date"] = _df["date"].apply(lambda d: d.date())
    _df = _df.sort_values(by="datetime")
    _df = _df.loc[:,["date","datetime","name"]]
    start_times = _df.groupby("date").agg({"datetime":min}).reset_index().set_index(["date","datetime"]).join(_df.set_index(["date","datetime"]))
    end_times =  _df.groupby("date").agg({"datetime":max}).reset_index().set_index(["date","datetime"]).join(_df.set_index(["date","datetime"]))
    start_end_times = start_times.reset_index().set_index("date").join(end_times.reset_index().set_index("date"),how="outer",lsuffix="_s",rsuffix="_e").sort_index()
#    click.echo(start_end_times.reset_index().to_csv(index=None))
#    click.echo("joined")
    click.echo((kintai_df.join(start_end_times)))


@engage_table.command()
@click.argument("task_id")
@click.argument("progress", type=click.FLOAT)
@click.pass_context
def eta(ctx, task_id, progress):
    assert 0 <= progress <= 1.0
    _logger = logging.getLogger("eta")
    _df = _get_tasks(ctx.obj["mongo_pass"]).reset_index()
    _df = pd.DataFrame({k:_df[k] for k in ["index","duration_hours","name"]})
    _df = _df.groupby(["index","name"]).sum().reset_index()
    r = [r for r in _df.to_dict(orient="records") if r["index"]==task_id]
    assert len(r)==1, r
    r = r[0]
    remaining_time_hours = timedelta(hours=r["duration_hours"])/progress*(1-progress)
    click.echo(f"{progress*100}% in {r['duration_hours']}h")
    click.echo(f"=> eta: {remaining_time_hours} (at {datetime.now()+remaining_time_hours})")


if __name__ == "__main__":
    logging.basicConfig(level=logging.INFO)
    engage_table()
