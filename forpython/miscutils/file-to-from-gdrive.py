#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/file-to-from-gdrive.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: use `mypy upload-file-to-gdrive.py` for type check
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-08-06T00:47:29.758704
    REVISION: ---

TODO:
  1. upload dirs
  2. abc abstract class
==============================================================================="""

# > time rclone lsjson gdrive: --dirs-only|jq '.|length'     (base)
# 92
# ________________________________________________________
# Executed in    4.71 secs      fish           external
#    usr time  166.88 millis    0.35 millis  166.53 millis
#    sys time   59.34 millis    1.08 millis   58.27 millis

# > time rclone lsjson gdrive: --dirs-only --recursive|jq '.|length'  (base)
# 578
# ________________________________________________________
# Executed in   10.34 secs      fish           external
#    usr time  313.66 millis    0.42 millis  313.24 millis
#    sys time  131.74 millis    1.28 millis  130.46 millis


# from dotenv import load_dotenv

import click
import os
from os import path
import logging
import webbrowser
import subprocess
import functools
import json5
import copy
import typing
import pandas as pd
import json
from jinja2 import Template
import time
from datetime import datetime, timedelta
from glob import glob
from _file_to_from_gdrive import run_cmd, load_engine_config, RcloneEngine

coption = functools.partial(click.option, show_default=True, show_envvar=True)


@click.group()
@coption("-e", "--engine", type=click.Choice(["rclone", "gdrive"]), default="rclone")
@coption("-c", "--engine-config-path", type=click.Path(exists=True))
@coption("--print-cache/--no-print-cache", help="eager", default=False)
@click.pass_context
def file_to_from_gdrive(
    ctx,
    engine,
    engine_config_path,
    print_cache,
):
    engine_config = load_engine_config(engine_config_path)
    if engine == "rclone":
        engine_factory = RcloneEngine
    elif engine == "gdrive":
        # FIXME: support `gdrive` as well
        raise NotImplementedError(dict(engine=engine))
    else:
        raise NotImplementedError(dict(engine=engine))
    engine = engine_factory(**engine_config)

    if print_cache:
        click.echo(json.dumps(engine.cache))
        ctx.exit()

    ctx.ensure_object(dict)
    ctx.obj = dict(engine=engine)


@file_to_from_gdrive.command(name="from")
@coption("--file-id", "-i", type=str)
@click.pass_context
def from_(ctx, file_id):
    engine = ctx.obj["engine"]
    res = engine.download_file(file_id=file_id)
    click.echo(res)


@file_to_from_gdrive.command(name="to")
@coption("-f", "--filepath", required=True)
@coption("--is-open-url/--no-is-open-url", " /-n", default=True)
@coption("--parent-dir-id", "-p", type=str)
@coption(
    "--expand-index",
    "-e",
    type=int,
    help="expand and then take index element specified by `-e`",
)
@click.pass_context
def to_(
    ctx,
    filepath,
    is_open_url,
    parent_dir_id,
    expand_index,
):
    engine = ctx.obj["engine"]

    if expand_index is not None:
        expansions = glob(f"{filepath}*")
        expansions = sorted(expansions, reverse=True)
        logging.warning(expansions[:5])
        filepath = expansions[expand_index]

    if path.isfile(filepath):
        object_type = "file"
    elif path.isdir(filepath):
        object_type = "dir"
    else:
        raise NotImplementedError(dict(filepath=filepath))

    id_ = engine.upload_file(
        filepath, parent_dir_id=parent_dir_id, object_type=object_type
    )

    if object_type == "file":
        url = f"https://drive.google.com/file/d/{id_}/edit"
    elif object_type == "dir":
        url = f"https://drive.google.com/drive/u/0/folders/{id_}"
    else:
        raise NotImplementedError(dict(object_type=object_type))
    # FIXME: if upload `csv`, allow to auto-convert

    click.echo(url)
    if is_open_url:
        webbrowser.open(url)


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    file_to_from_gdrive(auto_envvar_prefix="UPLOAD_FILE_TO_GDRIVE")
