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

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
from datetime import datetime, timedelta


_DT_FORMATS = ["%Y-%m-%d", "%Y-%m-%d %H:%M"]


@click.command()
@click.option(
    "-f", "--from", "from_", type=click.DateTime(_DT_FORMATS), default=datetime.now()
)
@click.option("-t", "--to", type=click.DateTime(_DT_FORMATS), default=datetime.now())
@click.option("--exclude-to/--no-exclude-to", "-e/ ", default=False)
@click.option(
    "-r",
    "--resolution",
    type=click.Choice(["days", "minutes", "plain"]),
    default="days",
)
def dates_from_to(to, from_, exclude_to, resolution):
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
