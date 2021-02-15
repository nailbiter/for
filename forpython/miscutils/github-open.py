#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/github-open.py

       USAGE: ././miscutils/github-open.py

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
def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@click.command()
@click.option("-f","--file-name",type=click.Path(),default=".")
@click.option("--freeze-commit/--no-freeze-commit",default=False)
@click.option("--debug/--no-debug",default=True)
@_add_logger
def github_open(file_name,freeze_commit,debug,logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    git_dir = "."
    while not path.isdir(path.join(git_dir,".git")):
        git_dir = path.join(git_dir,"..")
    #click.echo(f"git_dir: {git_dir}")
    remote_git_url = subprocess.getoutput("git remote get-url origin")
    assert remote_git_url.endswith(".git")
    remote_git_url = remote_git_url[:-4]
    #click.echo(f"remote_git_url: {remote_git_url}")
    git_branch = subprocess.getoutput("git name-rev --name-only HEAD")
    #click.echo(f"git_branch: {git_branch}")
    env = {
        "remote_git_url":remote_git_url,
        "git_branch":git_branch,
        "path":path,
        "file_name":file_name,
        "git_dir":git_dir
    }
    if not freeze_commit:
        url_tpl = """{{remote_git_url}}/tree/{{git_branch}}/{{path.relpath(file_name,start=git_dir)}}"""
    else:
        env["commit"] = subprocess.getoutput("git rev-parse HEAD")
        url_tpl = """{{remote_git_url}}/blob/{{commit}}/{{path.relpath(file_name,start=git_dir)}}"""

    url = Template(url_tpl).render(env)
    logger.info(f"url: {url}")
    webbrowser.open(url)
            

if __name__=="__main__":
    github_open()
