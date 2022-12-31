#!/usr/bin/env python3
"""===============================================================================

        FILE: leo.py

       USAGE: ./leo.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-12-30T22:42:50.883429
    REVISION: ---

==============================================================================="""

import logging

# from dotenv import load_dotenv
import os
import re
import subprocess
from os import path

import click
import sqlalchemy

from _common import DbCacheWrap


@click.command()
@click.option("-i", "--leo-docker-image-name", default="german-dict")
@click.option(
    "--database-file",
    type=click.Path(),
    default=path.join(path.dirname(__file__), ".leo.db"),
)
@click.argument("word")
def leo(leo_docker_image_name, word, database_file):
    logging.warning((database_file,))
    cmd = f'docker run -t nailbiter/{leo_docker_image_name}:latest leo -l de2en "{word}" 2>/dev/null'
    sqlalchemy_string = f"sqlite:///{path.abspath(database_file)}"
    logging.warning(sqlalchemy_string)
    ec, out = DbCacheWrap(sqlalchemy_string)(subprocess.getstatusoutput)(cmd)
    assert ec == 0, (cmd, ec, out)

    # FIXME: remove `perl` warnings from output in a more robust way
    lines = out.split("\n")
    regex = re.compile(r"^Found \d+ matches for")
    (start,) = [i for i, line in enumerate(lines) if regex.match(line) is not None]
    lines = lines[start:]
    out = "\n".join(lines)

    # TODO: caching

    click.echo(out)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    leo()
