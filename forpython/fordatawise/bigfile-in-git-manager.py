#!/usr/bin/env python3
"""===============================================================================

        FILE: fordatawise/_virtualenv_manager/../bigfile-in-git-manager.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-13T13:32:22.528416
    REVISION: ---

TODO:
    1(done). support several directories
    2. support remote storage (in particular, GS)
    3. support signing files to ensure integrity
    4(done). avoid creation of spurious copies
    4. better avoid creation of spurious copies
    5(done). use `db`, not JSON files
    6(done). timestamp every save you do
==============================================================================="""

import click
from subprocess import getoutput
import yaml
from os import getcwd, walk, makedirs
from os.path import join, isfile, abspath
import logging
import json
import hashlib
from _bigfile_in_git_manager import add_logger, system
from _bigfile_in_git_manager.State import State


_CONFIG_FN = ".bigfile-in-git-manager.config.yaml"


@click.group()
def bigfile_in_git_manager():
    logging.basicConfig(level=logging.INFO)


@add_logger
def _get_config(curDir, config_fn, logger):
    with open(join(curDir, config_fn)) as f:
        config = yaml.load(f.read(), Loader=yaml.SafeLoader)
    logger.info(f"{curDir} => config: {config}")
    return config


@bigfile_in_git_manager.command()
def post_commit():
    logger = logging.getLogger("post_commit")
    logger.info(f"cwd: {getcwd()}")

    res = []
    for curDir, dirs, files in walk("."):
        if _CONFIG_FN in files:
            res.append((curDir, _CONFIG_FN))
    logger.info(f"res: {res}")

    for curDir, config_fn in res:
        config = _get_config(curDir, config_fn)
        state = State(
            join(curDir, config["storage-dir"]),
            curDir,
            join(curDir, config["database"])
        )
        for fn in config["big-files"]:
            state.copy(fn)


@bigfile_in_git_manager.command()
def status():
    curDir = "."
    config = _get_config(curDir, _CONFIG_FN)
    storage_dir = join(curDir, config["storage-dir"])
    system(f"du -hs {storage_dir}")
    state = State(
        join(curDir, config["storage-dir"]),
        curDir,
        join(curDir, config["database"])
    )
    print(state.get_log_table())
    # TODO: output which sha version current file matches


@bigfile_in_git_manager.command()
@click.option("-s", "--sha")
@click.option("-f", "--filename", multiple=True)
def restore(sha, filename):
    # TODO
    pass


if __name__ == "__main__":
    bigfile_in_git_manager()
