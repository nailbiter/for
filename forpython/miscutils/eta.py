#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/eta.py

       USAGE: ./miscutils/eta.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-03T14:25:16.801468
    REVISION: ---

==============================================================================="""

import click
from pymongo import MongoClient
from datetime import datetime, timedelta
import pandas as pd
import logging
import functools

moption = functools.partial(click.option, show_default=True, show_envvar=True)


@click.group()
@click.option("--debug/--no-debug", default=False)
def eta(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


@eta.command()
@moption(
    "-i", "--input-csv-table-file-name", type=click.Path(allow_dash=True), default="-"
)
@moption("-n", "--name", "names", multiple=True)
@moption("-w", "--weight-field-name")
@moption("-s", "--spent-field-name", required=True)
@moption("-u", "--unit", type=click.Choice(["seconds"]), default="seconds")
def analyse_table(
    input_csv_table_file_name, names, spent_field_name, unit, weight_field_name
):
    """
    usage:
    ```
    cat table.csv | eta.py analyze-table -w weight_field_name -s spent_field_name -u seconds
    ```
    """
    with click.open_file(input_csv_table_file_name) as f:
        df = pd.read_csv(f, sep="\t", **({} if not names else dict(names=list(names))))

    if weight_field_name is None:
        weight_field_name = "w"
        df[weight_field_name] = 1

    logging.warning(
        dict(weight_field_name=weight_field_name, spent_field_name=spent_field_name)
    )
    logging.warning(df)

    done = df[df[spent_field_name].notna()]
    todo = df[df[spent_field_name].isna()]
    velocity = done[weight_field_name].sum() / done[spent_field_name].sum()
    eta = todo[weight_field_name].sum() / velocity

    td = None
    if unit == "seconds":
        td = timedelta(seconds=eta)
    else:
        raise NotImplementedError(dict(unit=unit))

    now = datetime.now()
    click.echo(f"""ETA: {(now+td).strftime('%Y-%m-%d %H:%M')} (+{td})""")


def _get_mongo_client():
    return MongoClient()


@eta.command()
@click.argument("name")
@click.option("-m", "--max-count", type=int, default=-1)
def create_counter(name, max_count):
    # FIXME: check that name is unique
    _get_mongo_client().eta.timers.insert_one(
        {"name": name, "max_count": max_count, "date": datetime.now()}
    )


@eta.command()
@click.argument("name")
def increment_counter(name):
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    _get_mongo_client().eta.timer_progress.insert_one(
        {"name": name, "date": datetime.now()}
    )
    if timer["max_count"] > 0:
        _show_counter(name)


@eta.command()
@click.argument("name")
@click.option("-t", "--time", type=click.DateTime())
def stop_timer(name, time):
    if time is None:
        time = datetime.now()
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    _get_mongo_client().eta.timer_time.insert_one(
        {"name": name, "date": time, "is_stop": True}
    )
    if timer["max_count"] > 0:
        _show_counter(name)


@eta.command()
@click.argument("name")
@click.option("-t", "--time", type=click.DateTime())
def resume_timer(name, time):
    if time is None:
        time = datetime.now()
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    _get_mongo_client().eta.timer_time.insert_one(
        {"name": name, "date": time, "is_stop": False}
    )
    if timer["max_count"] > 0:
        _show_counter(name)


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)

    return _f


@_add_logger
def _show_counter(name, logger, max_count=-1):
    timer = _get_mongo_client().eta.timers.find_one({"name": name})
    client = _get_mongo_client()
    df = pd.DataFrame(client.eta.timer_progress.find({"name": name}))
    logger.info(df)
    assert max_count > 0 or timer["max_count"] > 0
    if timer["max_count"] > 0:
        max_count = timer["max_count"]
    timer_duration = max(df.date) - timer["date"]
    stop_starts = pd.DataFrame(client.eta.timer_time.find({"name": name}))
    stop_starts = stop_starts.sort_values(by="date")
    stop_starts = stop_starts.to_dict(orient="records")
    excessive_time = timedelta(0)
    if len(stop_starts) > 0:
        if len(stop_starts) % 2 == 1:
            stop_starts.append({"date": datetime.now(), "is_stop": False})
        for i in range(0, len(stop_starts), 2):
            stop, restart = stop_starts[i : i + 2]
            assert stop["is_stop"] and not restart["is_stop"]
            excessive_time += restart["date"] - stop["date"]

    eta_ = (
        timer["date"]
        + excessive_time
        + (timer_duration - excessive_time) / len(df) * max_count
    )
    s = ""
    for i in range(len(df)):
        s += "*"
    for i in range(max_count - len(df)):
        s += " "
    print(f"[{s}]")
    print(f"eta: {eta_.isoformat()}")
    print(f"{len(df)}/{max_count}={len(df)/max_count*100:4.2f}")
    print(f"average length of iteration: {(max(df.date)-timer['date']) / (len(df))}")


@eta.command()
@click.argument("name")
@click.option("-m", "--max-count", type=int, default=-1)
def show_counter(name, max_count):
    _show_counter(name, max_count=max_count)


if __name__ == "__main__":
    eta()
