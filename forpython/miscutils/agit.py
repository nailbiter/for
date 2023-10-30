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
import json
import re
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
from _agit import get_branch_name, find_git_path, get_head_sha, traverse_commits
import json5

moption = functools.partial(click.option, show_envvar=True)


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
@moption("--dry-run/--no-dry-run", default=False)
@moption("--debug/--no-debug", default=False)
@moption("-c", "--config-file", type=click.Path())
@click.pass_context
def agit(ctx, debug, config_file, **kwargs):
    if debug:
        logging.basicConfig(level=logging.INFO)
    ctx.ensure_object(dict)
    ctx.obj["system"] = _System(kwargs["dry_run"])
    ctx.obj["kwargs"] = kwargs

    ctx.obj["config"] = {}
    if config_file is not None:
        with open(config_file) as f:
            ctx.obj["config"] = json5.load(f)


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


@agit.command()
@moption("-b", "--branch", type=str)
@moption("-f", "--authors-file", type=click.Path(allow_dash=True), required=True)
@moption("-e", "--behaviour", type=click.Choice(["report", "throw"]), default="report")
@click.pass_context
def authors(ctx, branch, authors_file, behaviour):
    branch = get_branch_name() if branch is None else branch
    logging.warning(f'b: "{branch}"')
    repo, _ = find_git_path()
    head_commit = repo.commit(branch)
    logging.warning(head_commit.hexsha)
    authors = {commit.author.name for commit in traverse_commits(head_commit)}
    logging.warning(authors)

    with click.open_file(authors_file) as f:
        allowed_authors = set(json.load(f))
    is_only_allowed = authors <= set(allowed_authors)
    logging.warning(f"is_only_allowed: {is_only_allowed}")

    if behaviour == "report":
        pass
    elif behaviour == "throw":
        assert is_only_allowed, (set(authors), allowed_authors)
    else:
        raise NotImplementedError(dict(behaviour=behaviour))

    # committers = {commit.committer.name for commit in traverse_commits(head_commit)}
    # logging.warning(committers)


@agit.command()
def branch():
    click.echo(get_branch_name())


@agit.command()
@click.argument("from_directory", type=click.Path(), nargs=-1)
@click.argument("to_directory", type=click.Path(), nargs=1)
@moption("--db-filename", default=".git-copy.db")
@moption("-r", "--recursive", is_flag=True)
@moption("--check-clean-git-tree/--no-check-clean-git-tree", default=True)
@click.pass_context
@_add_logger
def cp(
    ctx,
    from_directory,
    to_directory,
    db_filename,
    recursive,
    check_clean_git_tree,
    logger=None,
):
    repo, repo_root = find_git_path()
    from_repo_roots = [find_git_path(fd)[1] for fd in from_directory]
    logging.info(f"from_repo_roots: {from_repo_roots}")
    assert len(set(from_repo_roots)) == 1, from_repo_roots
    is_another_repo = path.abspath(repo_root) != path.abspath(from_repo_roots[0])

    from_head_commit, remote_url = [None] * 2
    head_commit = None
    if check_clean_git_tree:
        head_commit = get_head_sha(repo_root).hexsha
        logging.info(f"head_commit: {head_commit}")
        if is_another_repo:
            logging.info(f"{from_repo_roots}")
            from_head_commit = get_head_sha(from_repo_roots[0]).hexsha
            # FIXME: rewrite in Python
            remote_url = subprocess.getoutput(
                f"cd {from_repo_roots[0]} && git remote get-url origin"
            )
            logging.info(f"remote_url: {remote_url}")
    #    print((repo_root, from_repo_roots, is_another_repo, from_head_commit, remote_url))
    #    exit(0)

    cmd = "cp"
    if recursive:
        cmd += " -r"
    _system = ctx.obj["system"]
    _system(f"{cmd} {' '.join(from_directory)} {to_directory}")
    _system(f"git add {to_directory}")
    git_msg = (
        Template(
            """
COPYCAT: "{{from}}" -> "{{to}}" {%if is_another_repo%}(remote {{remote_url}}:{{from_head_commit}}){%else%}({{head_commit}}){%endif%}
    """
        )
        .render(
            {
                "from": ([path.relpath(fd_, repo_root) for fd_ in from_directory]),
                "to": (path.relpath(to_directory, repo_root)),
                "is_another_repo": is_another_repo,
                "from_head_commit": from_head_commit,
                "remote_url": remote_url,
                "head_commit": head_commit,
            }
        )
        .strip()
    )
    _random_fn = _agit.get_random_fn()
    with open(_random_fn, "w") as f:
        f.write(_agit.filter_safe(git_msg, **ctx.obj["config"]))
    _system(f"""git commit -a -F \"{_random_fn}\" """)


if __name__ == "__main__":
    agit(auto_envvar_prefix="AGIT", show_default=True)
