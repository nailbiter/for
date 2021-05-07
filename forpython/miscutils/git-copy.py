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
    1. handle `*` .gitignores automatically (like in `venv` folder)
    2. copy '.envrc' as well (although it's in gitignore)
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


@git_copy.command()
@click.argument("from_directory", type=click.Path(file_okay=False))
@click.argument("to_directory", type=click.Path())
@click.option("--db-filename",default=".git-copy.db")
@click.pass_context
@_add_logger
def cp(ctx, from_directory, to_directory,db_filename, logger=None):
    # collect gitignores
    gitignore_matchers = []
    if path.isfile(".gitignore"):
        logger.info("append .gitignore")
        gitignore_matchers.append(_GitignoreMatcher(".gitignore"))
    for root, dirs, files in os.walk(from_directory, topdown=False):
        for name in files:
            if path.split(name)[-1] == ".gitignore":
                fn = os.path.join(root, name)
                logger.info(f"append {fn}")
                gitignore_matchers.append(_GitignoreMatcher(fn))

    _system = ctx.obj["system"]
    _system(f"mkdir -p {to_directory}")
    _timestamps = []
    for root, dirs, files in os.walk(from_directory, topdown=False):
        for name in files:
            src = os.path.join(root, name)
            logger.debug(f"testing {src}")
            if not functools.reduce(lambda a, b: a or b, map(lambda f: f(src), gitignore_matchers), False):
                dst = path.join(
                    to_directory, path.relpath(src, from_directory))
                _timestamps.append({"src":src,"dst":dst,"time":datetime.now().isoformat()})
                _system(f"mkdir -p {path.split(dst)[0]}")
                _system(f"cp {src} {dst}")
                _system(f"git add {dst}")

    _timestamps = pd.DataFrame(_timestamps)
    click.echo(_timestamps)
    if not ctx.obj["kwargs"]["dry_run"]:
        conn = sqlite3.connect(path.join(to_directory,db_filename))
        _timestamps.to_sql("timestamps",conn,if_exists="append",index=None)
        conn.close()

#        for name in dirs:
#            src = os.path.join(root, name)
#            if not functools.reduce(lambda a,b: a or b, map(lambda f:f(src),gitignore_matchers),False):
##                _system(f"cp {src} {path.join(to_directory,path.relpath(src,from_directory))}")
#                _system(f"mkdir -p {path.join(to_directory,path.relpath(src,from_directory))}")


if __name__ == "__main__":
    git_copy()
