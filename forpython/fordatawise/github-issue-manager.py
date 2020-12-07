#!/usr/bin/env python3
"""===============================================================================

        FILE: github-issue-manager.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-17T12:20:03.409395
    REVISION: ---

==============================================================================="""

import click
from requests import get
import json
import re
import pandas as pd
import logging
from _github_issue_manager import add_logger


@click.group()
@click.option("--debug/--no-debug", default=False)
@click.option("--github-repo-url", envvar="GITHUB_REPO_URL")
@click.option("--github-login", envvar="GITHUB_LOGIN")
@click.option("--github-pass", envvar="GITHUB_PASS")
@click.pass_context
def github_issue_manager(ctx, debug, **kwargs):
    if debug:
        logging.basicConfig(level=logging.INFO)
    for k in ["github_repo_url", "github_login", "github_pass"]:
        assert kwargs[k] is not None

    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v

    m = re.match(r"https://github.com/(?P<repo_owner>.+)/(?P<repo_name>.+)/?",
                 ctx.obj["github_repo_url"])
    assert m is not None
    ctx.obj["repo_m"] = m


_ROOT_URL = "https://api.github.com/repos"


@github_issue_manager.command()
@click.pass_context
def list_issues(ctx):
    logger = logging.getLogger("list_issues")
    m = ctx.obj["repo_m"]
    url = f"{_ROOT_URL}/{m.group('repo_owner')}/{m.group('repo_name')}/issues"
    logger.info(f"url: {url}")
    r = get(url, auth=(ctx.obj["github_login"], ctx.obj["github_pass"]))
    data = json.loads(r.text)
    logging.info(f"data: {data}")
    df = pd.DataFrame(
        [{"number": i["number"], "title":i["title"], "labels":i["labels"]} for i in data])

    # print(df.to_csv(index=None,sep="\t"))
    print(df.to_string())


@github_issue_manager.command()
@click.pass_context
def list_labels(ctx):
    logger = logging.getLogger("list_labels")
    m = ctx.obj["repo_m"]
    url = f"{_ROOT_URL}/{m.group('repo_owner')}/{m.group('repo_name')}/labels"
    logger.info(f"url: {url}")
    r = get(url, auth=(ctx.obj["github_login"], ctx.obj["github_pass"]))
    data = json.loads(r.text)
    logging.info(f"data: {data}")
    df = pd.DataFrame(data)
    df = df.drop(columns=["color", "id", "node_id", "url"])

    print(df.to_string())


@github_issue_manager.command()
def add_label():
    pass


@github_issue_manager.command()
def remove_label():
    pass


@github_issue_manager.command()
@click.pass_context
@add_logger
def list_issues(ctx,logger):
    m = ctx.obj["repo_m"]
    url = f"{_ROOT_URL}/{m.group('repo_owner')}/{m.group('repo_name')}/issues"
    logger.info(f"url: {url}")
    r = get(url, auth=(ctx.obj["github_login"], ctx.obj["github_pass"]))
    data = json.loads(r.text)
    logging.info(f"data: {data}")
    df = pd.DataFrame(data)
    #df = df.drop(columns=["color", "id", "node_id", "url"])

    click.echo(df.to_string())


@github_issue_manager.group()
def issue():
    pass


@issue.command()
def add():
    pass


@issue.command()
def close():
    pass


@issue.command()
def print():
    pass


@issue.command()
def set_description():
    pass


if __name__ == "__main__":
    github_issue_manager()
