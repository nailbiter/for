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
@click.option("-s", "--set-value")
@click.option(
    "--force-cache-miss/--no-force-cache-miss",
    "-f/ ",
    "is_force_cache_miss",
    default=False,
)
@click.argument("word")
def leo(leo_docker_image_name, word, database_file, set_value, is_force_cache_miss):
    word = word.strip()
    get_translation = DbCacheWrap(f"sqlite:///{path.abspath(database_file)}")(
        subprocess.getstatusoutput,
    )

    cmd = f'docker run -t nailbiter/{leo_docker_image_name}:latest leo -l de2en "{word}" 2>/dev/null'
    if set_value is None:
        ec, out = get_translation(
            cmd,
            is_force_cache_miss=is_force_cache_miss,
        )
    else:
        ec, out = 0, set_value
        get_translation.set_result([ec, out], cmd)
    if ec == 1 and f'Search for "{word}" returned no results.':
        click.echo(f'Search for "{word}" returned no results.')
        return
    assert ec == 0, (cmd, ec, out)

    # FIXME: remove `perl` warnings from output in a more robust way
    lines = out.split("\n")
    regex = re.compile(r"^Found \d+ matches for")
    starts = [i for i, line in enumerate(lines) if regex.match(line) is not None]
    if len(starts) == 0:
        start = 0
    else:
        (start,) = starts
    lines = lines[start:]
    out = "\n".join(lines)
    out = out.strip()

    _ending = """
     Fetched by leo 2.02 via http://dict.leo.org/
     Copyright (C) LEO  Dictionary Team 1995-2017
     [leo] GPL Copyleft   Thomas v.D. 2000-2017\n\n\x1b[0m
    """.strip()

    #    logging.warning([x[-len(_ending):]for x in [out,_ending]])
    #    exit(0)

    if out.endswith(_ending):
        logging.warning(f"removing ending")
        out = out[: -len(_ending)]
    out = out.strip()

    # TODO: caching

    click.echo(out)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    leo()
