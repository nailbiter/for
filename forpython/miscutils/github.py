#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/github.py

       USAGE: ././miscutils/github.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-02-15T18:42:13.617734
    REVISION: ---

==============================================================================="""

import click
import os
import webbrowser
from os import path
import subprocess
from jinja2 import Template
import logging
import re


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


def _get_branch_name():
    # return subprocess.getoutput("git name-rev --name-only HEAD")
    res = subprocess.getoutput("git status")
    m = re.match(r"On branch (.+)",res)
    assert m is not None, f"\"{res}\""
    return m.group(1)


@click.group()
@click.option("--debug/--no-debug", default=True)
def github(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

@github.command()
def branch():
    click.echo(_get_branch_name())
    pass

@github.command(name="open")
@click.option("-f", "--file-name", type=click.Path(), default=".",multiple=True)
@click.option("--freeze-commit/--no-freeze-commit", default=False)
@click.option("--branch")
@click.option("--open-url/--no-open-url", default=True)
@click.option("--head",type=int)
@_add_logger
def open_url(file_name, freeze_commit, open_url, branch, head,logger=None):
    git_dir = "."
    while not path.isdir(path.join(git_dir, ".git")):
        git_dir = path.join(git_dir, "..")
    #click.echo(f"git_dir: {git_dir}")
    remote_git_url = subprocess.getoutput("git remote get-url origin")
    assert remote_git_url.endswith(".git")
    remote_git_url = remote_git_url[:-4]
    #click.echo(f"remote_git_url: {remote_git_url}")
    if branch is None:
        branch = _get_branch_name()
    #click.echo(f"git_branch: {git_branch}")
    for file_name_ in file_name:
        env = {
            "remote_git_url": remote_git_url,
            "git_branch": branch,
            "path": path,
            "file_name": file_name_,
            "git_dir": git_dir
        }
        if not freeze_commit:
            url_tpl = """{{remote_git_url}}/tree/{{git_branch}}/{{path.relpath(file_name,start=git_dir)}}"""
        else:
            cmd = "git rev-parse HEAD"
            if head is not None:
                assert head>0
                cmd = f"{cmd}~{head}"
            env["commit"] = subprocess.getoutput(cmd)
            url_tpl = """{{remote_git_url}}/blob/{{commit}}/{{path.relpath(file_name,start=git_dir)}}"""

        url = Template(url_tpl).render(env)
        click.echo(f"{url}")
        if open_url:
            webbrowser.open(url)


if __name__ == "__main__":
    github()
