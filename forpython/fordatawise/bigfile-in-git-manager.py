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
    1. support several directories
    2. support remote storage (in particular, GS)
    3. support signing files to ensure integrity
    4(done). avoid creation of spurious copies
    4. better avoid creation of spurious copies
    5. use `db`, not JSON files
    6. timestamp every save you do
==============================================================================="""

import click
from subprocess import getoutput
from git import Repo
import yaml
from os import getcwd, walk, makedirs, system
from os.path import join, isfile, abspath
import logging
import json
import hashlib


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


@click.group()
def bigfile_in_git_manager():
    logging.basicConfig(level=logging.INFO)


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f


@_add_logger
def _get_config(curDir, config_fn, logger):
    with open(join(curDir, config_fn)) as f:
        config = yaml.load(f.read(), Loader=yaml.SafeLoader)
    logger.info(f"{curDir} => config: {config}")
    return config


@bigfile_in_git_manager.command()
def post_commit():
    logger = logging.getLogger("post_commit")
    sha = _get_head_sha()
    logger.info(f"commit: {sha}")
    logger.info(f"cwd: {getcwd()}")

    res = []
    for curDir, dirs, files in walk("."):
        if _CONFIG_FN in files:
            res.append((curDir, _CONFIG_FN))
    logger.info(f"res: {res}")

    for curDir, config_fn in res:
        config = _get_config(curDir, config_fn)
        storage_dir = join(curDir, config["storage-dir"], sha)
        makedirs(storage_dir, exist_ok=True)
        state = _State(storage_dir, sha, curDir)
        for fn in config["big-files"]:
            state.copy(fn)
        state.save()


@bigfile_in_git_manager.command()
def status():
    curDir = "."
    config = _get_config(curDir, _CONFIG_FN)
    storage_dir = join(curDir, config["storage-dir"])
    system(f"du -hs {storage_dir}")


class _State:
    _STATE_FN = "state.json"

    def _load_state(self, storage_dir):
        state_fn = join(storage_dir, "..", _State._STATE_FN)
        self._logger.info(f"state_fn: {state_fn}")
        if not isfile(state_fn):
            res = {}
        else:
            with open(state_fn) as f:
                res = json.load(f)
        self._logger.info(f"res: {res}")
        return res, state_fn

    def copy(self, fn):
        src = join(self._curDir, fn)
        dst = join(self._storage_dir, fn)
        prev_sha = self._state.get("sha", None)
        self._logger.info(f"prev_sha: {prev_sha}")
        need_to_copy = True

        if prev_sha is not None:
            src_ = join(self._storage_dir, "..", prev_sha, fn)
            prev_sha = hashlib.sha256(open(src_, "rb").read()).hexdigest()
            new_sha = hashlib.sha256(open(src, "rb").read()).hexdigest()
            self._logger.info(f"prev_sha: {prev_sha}, new_sha: {new_sha}")
            if prev_sha == new_sha:
                need_to_copy = False
                src = src_

        if need_to_copy:
            _system(f"cp {src} {dst}")
        else:
            #self._logger(f"set up symlink for {fn}")
            _system(f"ln -s {abspath(src_)} {dst}")

    def __init__(self, storage_dir, sha, curDir):
        self._logger = logging.getLogger(self.__class__.__name__)
        self._storage_dir = storage_dir
        self._sha = sha
        self._state, self._state_fn = self._load_state(storage_dir)
        self._curDir = curDir

    def save(self):
        with open(self._state_fn, "w") as f:
            json.dump({**self._state, "sha": self._sha}, f, indent=2,
                      ensure_ascii=False, sort_keys=True)


if __name__ == "__main__":
    bigfile_in_git_manager()
