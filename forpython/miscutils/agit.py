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
from jinja2 import Template
import subprocess
import shlex
import _agit


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


def _find_git_path(path_in="."):
    if path.isdir(path_in):
        _path = path_in
    elif path.isfile(path_in):
        _path = path.dirname(path_in)
    else:
        raise NotImplementedError(f"\"{path_in}\"")
    # FIXME: this probably can be done better
#    while True:
    repo = None
    for i in range(200):
        logging.info(f"#{i}: _path: {_path}")
        try:
            repo = Repo(_path)
            break
        except Exception as e:
            logging.info(e)
            _path = path.join(_path, "..")
    return repo, _path


def _get_head_sha(git_path=None):
    repo, _path = _find_git_path(
        **({} if git_path is None else {"path_in": git_path}))
    assert not repo.bare
    head_commit = repo.head.commit
    diff = head_commit.diff(None)
    assert(not diff), ("should be no changes on tree (do `git commit -a`)", diff, _path)

    return head_commit


@git_copy.command()
@click.argument("from_directory", type=click.Path(), nargs=-1)
@click.argument("to_directory", type=click.Path(), nargs=1)
@click.option("--db-filename", default=".git-copy.db")
@click.option("-r", "--recursive", is_flag=True)
@click.option("--check-clean-git-tree/--no-check-clean-git-tree", default=True)
@click.pass_context
@_add_logger
def cp(ctx, from_directory, to_directory, db_filename, recursive, check_clean_git_tree, logger=None):
    repo, repo_root = _find_git_path()
    from_repo_roots = [_find_git_path(fd)[1] for fd in from_directory]
    logging.info(f"from_repo_roots: {from_repo_roots}")
    assert len(set(from_repo_roots)) == 1, from_repo_roots
    is_another_repo = path.abspath(
        repo_root) != path.abspath(from_repo_roots[0])

    from_head_commit, remote_url = [None]*2
    head_commit = None
    if check_clean_git_tree:
        head_commit = _get_head_sha(repo_root).hexsha
        logging.info(f"head_commit: {head_commit}")
        if is_another_repo:
            logging.info(f"{from_repo_roots}")
            from_head_commit = _get_head_sha(from_repo_roots[0]).hexsha
            # FIXME: rewrite in Python
            remote_url = subprocess.getoutput(
                f"cd {from_repo_roots[0]} && git remote get-url origin")
            logging.info(f"remote_url: {remote_url}")
#    print((repo_root, from_repo_roots, is_another_repo, from_head_commit, remote_url))
#    exit(0)

    cmd = "cp"
    if recursive:
        cmd += " -r"
    _system = ctx.obj["system"]
    _system(f"{cmd} {' '.join(from_directory)} {to_directory}")
    _system(f"git add {to_directory}")
    git_msg = Template("""
COPYCAT: "{{from}}" -> "{{to}}" {%if is_another_repo%}(remote {{remote_url}}:{{from_head_commit}}){%else%}({{head_commit}}){%endif%}
    """).render({
        "from": ([path.relpath(fd_, repo_root) for fd_ in from_directory]),
        "to": (path.relpath(to_directory, repo_root)),
        "is_another_repo": is_another_repo,
        "from_head_commit": from_head_commit,
        "remote_url": remote_url,
        "head_commit": head_commit,
    }).strip()
    _random_fn = _agit.get_random_fn()
    with open(_random_fn, "w") as f:
        f.write(git_msg)
    _system(f"""cat {_random_fn} | git commit -a -m -""")


if __name__ == "__main__":
    git_copy()
