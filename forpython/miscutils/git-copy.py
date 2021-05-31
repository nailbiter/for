#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/git-copy.py

       USAGE: ././miscutils/git-copy.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-07T10:23:02.574280
    REVISION: ---

TODO:
    1(done). auto-check for absence of changes in git tree before command is issued
==============================================================================="""

import click
import logging
from gitignore_parser import parse_gitignore
from os import path
import os
import functools
import sqlite3
import pandas as pd
from datetime import datetime, timedelta
from git import Repo


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


class _System:
    def __init__(self, dry_run):
        self._dry_run = dry_run
        self._logger = logging.getLogger(self.__class__.__name__)

    def __call__(self, cmd):
        self._logger.info(f"{'o' if not self._dry_run else 'x'}> {cmd}")
        if not self._dry_run:
            return os.system(cmd)
        else:
            return 0


@click.group()
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def git_copy(ctx, debug, **kwargs):
    if debug:
        logging.basicConfig(level=logging.INFO)
    ctx.ensure_object(dict)
    ctx.obj["system"] = _System(kwargs["dry_run"])
    ctx.obj["kwargs"] = kwargs


class _GitignoreMatcher:
    def __init__(self, gitignore_file):
        self._matcher = parse_gitignore(gitignore_file)
        self._source_dir = path.realpath(path.dirname(gitignore_file))
        self._gitignore_file = gitignore_file
        self._logger = logging.getLogger(self.__class__.__name__)

    def __call__(self, fn):
        fn = path.realpath(fn)
        if path.commonpath([fn, self._source_dir]) != self._source_dir:
            res = False
        else:
            #        try:
            #            self._logger.info((fn,self._source_dir))
            #            res = path.relpath(fn,self._source_dir)
            #            self._logger.info(f"res: {res}")
            #        except ValueError:
            #            self._logger.info("here")
            #            return False
            self._logger.debug(f"testing {fn}")
            res = self._matcher(fn)
        self._logger.debug(f"{self._gitignore_file}: {fn} => {res}")
        return res


def _find_git_path():
    _path = "."
    # FIXME: this probably can be done better
    while True:
        try:
            repo = Repo(_path)
            break
        except Exception:
            _path = path.join(_path, "..")
    return repo,_path        

def _get_head_sha():
    repo,_ = _find_git_path()
    assert not repo.bare
    head_commit = repo.head.commit
    assert(not head_commit.diff(None)
           ), "should be no changes on tree (do `git commit -a`)"


@git_copy.command()
@click.argument("from_directory", type=click.Path(),nargs=-1)
@click.argument("to_directory", type=click.Path(),nargs=1)
@click.option("--db-filename", default=".git-copy.db")
@click.option("-r", "--recursive", is_flag=True)
@click.option("--check-clean-git-tree/--no-check-clean-git-tree", default=True)
@click.pass_context
@_add_logger
def cp(ctx, from_directory, to_directory, db_filename, recursive, check_clean_git_tree, logger=None):
    _, repo_root = _find_git_path()
    if check_clean_git_tree:
        _get_head_sha()
    cmd = "cp"
    if recursive:
        cmd += " -r"
    _system = ctx.obj["system"]
    _system(f"{cmd} {' '.join(from_directory)} {to_directory}")
    _system(f"git add {to_directory}")
    _system(
        f"""git commit -a -m 'COPYCAT: "{[path.relpath(fd_,repo_root) for fd_ in from_directory]}" -> "{path.relpath(to_directory,repo_root)}"' """)


if __name__ == "__main__":
    git_copy()
