#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/dates-from-to.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-08-26T18:28:17.438091
    REVISION: ---

TODO:

  1. database and save last (reuse via cache [and key])

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
from datetime import datetime, timedelta
from alex_leontiev_toolbox_python.utils.click_helpers.datetime_classes import (
    SimpleCliDatetimeParamType,
)


short_dt_types = {
    "%H:%M": {"year", "month", "day"},
    "%d %H:%M": {"year", "month"},
}
_DT_FORMATS = ["%Y-%m-%d", "%Y-%m-%d %H:%M", *short_dt_types]


@click.command()
@click.option(
    "-f",
    "--from",
    "from_",
    type=SimpleCliDatetimeParamType(
        _DT_FORMATS,
        short_dt_types=short_dt_types,
        is_debug=False,
        caching_settings=(
            path.abspath(path.join(path.dirname(__file__), ".dates_from_to.db")),
            "dates",
        ),
    ),
)
@click.option(
    "-t",
    "--to",
    type=SimpleCliDatetimeParamType(
        _DT_FORMATS,
        short_dt_types=short_dt_types,
        is_debug=False,
        caching_settings=(
            path.abspath(path.join(path.dirname(__file__), ".dates_from_to.db")),
            "dates",
        ),
    ),
)
@click.option("--exclude-to/--no-exclude-to", "-e/ ", default=False)
@click.option(
    "-r",
    "--resolution",
    type=click.Choice(["days", "minutes", "plain"]),
    default="days",
)
@click.option("--debug/--no-debug", default=False)
def dates_from_to(to, from_, exclude_to, resolution, debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

    now = datetime.now()
    to, from_ = [(x if x else now) for x in [to, from_]]

    logging.warning((to, from_))
    if resolution in ["days"]:
        to, from_ = [x.date() for x in [to, from_]]

    td = to - from_
    if resolution == "days":
        res = td.days
        if exclude_to:
            res -= 1
    elif resolution == "plain":
        res = str(td)
    elif resolution == "minutes":
        res = int(td.total_seconds() // 60)
    else:
        raise NotImplementedError(dict(resolution=resolution))
    click.echo(f"{res} {resolution}")


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    dates_from_to()
