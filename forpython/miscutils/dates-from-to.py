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


@click.command()
@click.option(
    "-f", "--from", "from_", type=click.DateTime(["%Y-%m-%d"]), default=datetime.now()
)
@click.option("-t", "--to", type=click.DateTime(["%Y-%m-%d"]), required=True)
@click.option("--exclude-to/--no-exclude-to", "-e/ ", default=False)
def dates_from_to(to, from_, exclude_to):
    logging.warning((to, from_))
    to, from_ = [x.date() for x in [to, from_]]
    res = (to - from_).days
    if exclude_to:
        res -= 1
    click.echo(f"{res} days")


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    dates_from_to()
