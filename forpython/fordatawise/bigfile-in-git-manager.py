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
    7(done). support compression
    8(done). save all shell commands executed to db: command + datetime + sha
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
from datetime import datetime, timedelta
from tqdm import tqdm


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
        _check_old_shas(state)


def _getCurrentConfigAndState():
    curDir = "."
    config = _get_config(curDir, _CONFIG_FN)
    storage_dir = join(curDir, config["storage-dir"])
    state = State(
        join(curDir, config["storage-dir"]),
        curDir,
        join(curDir, config["database"])
    )
    return config, state


@bigfile_in_git_manager.command()
def status():
    config, state = _getCurrentConfigAndState()
    system(f"du -hs {state.get_storage_dir()}")
    print(state.get_log_table())
    _check_old_shas(state)
    # TODO: output which sha version current file matches


@bigfile_in_git_manager.command()
@click.option("-s", "--sha")
@click.option("-f", "--filename", multiple=True)
def restore(sha, filename):
    # TODO
    pass

@add_logger
def _check_old_shas(state,logger):
    shas = _get_old_shas(state)
    if len(shas)>0:
        logger.warning(f"you have {len(shas)} outdated saves; you can archive them with `optimize-storage` command")

def _get_old_shas(state):
    log_table = state.get_log_table()
    log_table.datetime = log_table.datetime.apply(datetime.fromisoformat)
    log_table = log_table.groupby("sha").agg({"datetime": max})
    log_table = log_table.reset_index()
    log_table = log_table.sort_values(by="datetime", ascending=False)
    threshold = datetime.now()-timedelta(days=2)
    log_table = log_table[[dt < threshold for dt in log_table.datetime]]
    shas = [sha for sha in log_table.sha if not isfile(join(state.get_storage_dir(),f"{sha}.zip"))]
    return shas

@bigfile_in_git_manager.command()
@click.option("--dry-run/--no-dry-run",default=False)
def optimize_storage(dry_run):
    _, state = _getCurrentConfigAndState()
    shas = _get_old_shas(state)
    for sha in tqdm(shas):
        ret = state.system(
            f"cd {state.get_storage_dir()} && zip -9 {sha} -r {sha} && rm -rf {sha}/ && du -hs {sha}.zip",dry_run=dry_run, save_sha=False)
        if ret != 0:
            break


if __name__ == "__main__":
    bigfile_in_git_manager()
