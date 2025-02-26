#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/for-jira-playground/scripts/add-sprint.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-02-26T21:15:53.084338
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import sys
from alex_leontiev_toolbox_python.utils.click_helpers.datetime_classes import (
    CLI_DATETIME,
)
from datetime import datetime, timedelta


def run_cmd(cmd: str, dry_run: bool = False):
    logging.warning(("x" if dry_run else "o") + f">{cmd}")
    if not dry_run:
        os.system(cmd)


@click.command()
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("-s", "--start-date", type=CLI_DATETIME, required=True)
def add_sprint(start_date: datetime, dry_run: bool):
    python_executable = sys.executable
    logging.warning(dict(python_executable=python_executable, start_date=start_date))
    run_cmd(
        " ".join(
            [
                # python_executable,
                "jira-cli.py api sprint add",
                f"""-n '{start_date.strftime('%Y-%m-%d')} ({start_date.strftime('%a')})'""",
                f"-s {start_date.strftime('%Y-%m-%d')}",
                f"-e {(start_date+timedelta(days=1)).strftime('%Y-%m-%d')}",
                "-b 11",
            ]
        ),
        dry_run=dry_run,
    )


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    add_sprint()
