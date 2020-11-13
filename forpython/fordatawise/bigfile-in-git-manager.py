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

==============================================================================="""

import click
from subprocess import getoutput
from git import Repo
import yaml
from os import getcwd, walk, makedirs, system
from os.path import join
import logging


def _get_head_sha(path="."):
    _path = path
    # FIXME: this probably can be done better
    while True:
        try:
            repo = Repo(_path)
            break
        except Exception:
            _path = join(_path, "..")
    assert not repo.bare
    head_commit = repo.head.commit
    assert(not head_commit.diff(None)
           ), "should be no changes on tree (do `git commit -a`)"
    return head_commit.hexsha

def _system(cmd):
    logger = logging.getLogger("_system")
    logger.info(f"> {cmd}")
    system(cmd)

_CONFIG_FN = ".bigfile-in-git-manager.config.yaml"
@click.command()
def bigfile_in_git_manager():
    logger = logging.getLogger("bigfile_in_git_manager")
    sha = _get_head_sha()
    logger.info(f"commit: {sha}")
    logger.info(f"cwd: {getcwd()}")

    res = []
    for curDir, dirs, files in walk("."):
        if _CONFIG_FN in files:
            res.append((curDir,_CONFIG_FN))
    logger.info(f"res: {res}")

    for curDir,config_fn in res:
        with open(join(curDir,config_fn)) as f:
            config = yaml.load(f.read())
        logger.info(f"{curDir} => config: {config}")
        storage_dir = join(curDir,config["storage-dir"],sha)
        makedirs(storage_dir,exist_ok=True)
        for fn in config["big-files"]:
            _system(f"cp {join(curDir,fn)} {join(storage_dir,fn)}")


if __name__ == "__main__":
    bigfile_in_git_manager()
