#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/aprompt.py

       USAGE: .//Users/nailbiter/for/forpython/aprompt.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-01-26T12:50:30.958685
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import functools

moption = functools.partial(click.option)


@click.command()
@moption(
    "--logging-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.log.sqlite3")),
)
@moption(
    "--cache-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.cache.sqlite3")),
)
@moption(
    "--templates-dir",
    type=click.Path(exists=True, dir_okay=True, file_okay=False),
)
def aprompt(logging_config, cache_config, templates_dir):
    pass


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    aprompt()
