#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/jira-cli.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/jira-cli.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-09-20T20:56:39.978342
    REVISION: ---

TODO:
    1. find a way to call web api (and find docs for it)!

==============================================================================="""

import click
import numpy as np
import natsort
from dotenv import load_dotenv
import os
from os import path
import logging
import functools
import itertools
from jinja2 import Template
from _jira_cli import run_cmd, make_cmd, ssj
import requests
from requests.auth import HTTPBasicAuth
import json
from alex_leontiev_toolbox_python.utils.click_format_dataframe import (
    AVAILABLE_OUT_FORMATS,
    format_df,
    build_click_options,
    apply_click_options,
)
import pandas as pd

moption = functools.partial(click.option, show_envvar=True)
_build_click_options = functools.partial(build_click_options, option_factory=moption)


@click.group()
@moption("--jira-exec", default="jira")
@click.pass_context
def jira_cli(ctx, jira_exec):
    ctx.ensure_object(dict)
    ctx.obj["jira_exec"] = jira_exec


@jira_cli.group()
@moption("--jira-email", envvar="JIRA_EMAIL", required=True)
@moption("--jira-api-token", envvar="JIRA_API_TOKEN", required=True)
@moption("--jira-url", envvar="JIRA_URL", required=True)
@click.pass_context
def api(ctx, **kwargs):
    """
    see https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-search/#api-rest-api-3-search-get
    """
    ctx.obj = {**ctx.obj, **kwargs}


@api.command()
@click.pass_context
def application_role(ctx):
    # originally latest->3
    url = f"https://{ctx.obj['jira_url']}/rest/api/latest/applicationrole"
    auth = HTTPBasicAuth(ctx.obj["jira_email"], ctx.obj["jira_api_token"])
    headers = {"Accept": "application/json"}
    response = requests.request("GET", url, headers=headers, auth=auth)
    click.echo(response.text)


@api.command()
@moption("-j", "--jql", required=True, help="'project = HSP'")
@_build_click_options
@moption("--raw/--no-raw", "-r/ ", default=False)
@click.pass_context
def jql(ctx, jql, raw, **format_df_kwargs):
    """
    helpful jq's:
    * '.[]|[.key,.fields.summary]|@tsv'
    """
    # originally latest->3
    url = f"https://{ctx.obj['jira_url']}/rest/api/latest/search"
    auth = HTTPBasicAuth(ctx.obj["jira_email"], ctx.obj["jira_api_token"])
    headers = {"Accept": "application/json"}

    query = dict(jql=jql)
    response = requests.request("GET", url, headers=headers, params=query, auth=auth)

    if raw:
        click.echo(response.text)
    else:
        # df = pd.DataFrame(json.loads(response.text))
        l = json.loads(response.text)["issues"]
        logging.info(f"l1: {l}")
        # l = list(itertools.chain(*l))
        # logging.warning(f"l2: {l}")
        df = pd.DataFrame(l)
        df.sort_values(
            by=["key"],
            inplace=True,
            key=lambda x: np.argsort(natsort.index_natsorted(df["key"])),
        )
        click.echo(apply_click_options(df, format_df_kwargs))


@jira_cli.group()
@click.pass_context
def wrap(ctx):
    """
    very thin wrap around https://github.com/ankitpokhrel/jira-cli/blob/main/LICENSE
    """
    pass


@wrap.group()
@click.pass_context
def issue(ctx):
    pass


@issue.command()
@click.pass_context
def assign(ctx):
    pass


@issue.command()
@click.argument("issue_key")
@moption("-P", "--parent")
@moption("-s", "--summary")
@moption("-y", "--priority")
@moption("-a", "--assignee")
@moption("-l", "--label")
@moption("-C", "--component")
@moption("-H", "--replace")
@moption("-h", "--help")
@moption("-p", "--project")
@click.pass_context
def clone(ctx, issue_key, **kwargs):
    run_cmd(make_cmd("issue clone", kwargs=kwargs, args=[issue_key], ctx_obj=ctx.obj))


@wrap.group()
@click.pass_context
def epic(ctx):
    pass


@epic.command()
@moption("--plain/--no-plain", default=False)
@moption("--table/--no-table", default=False)
@click.pass_context
def ls(ctx, **flags):
    run_cmd(make_cmd("epic list", ctx_obj=ctx.obj, flags=flags))


@issue.command()
@click.pass_context
def comment(ctx):
    pass


@issue.command()
@moption(
    "-t",
    "--type",
    type=click.Choice(["Task", "Sub-task", "Story", "Bug"]),
    required=True,
)
@moption("-s", "--summary", required=True)
@moption("-b", "--body")
@moption("-P", "--parent")
@moption("-y", "--priority")
@moption("-r", "--reporter")
@moption("-a", "--assignee")
@moption("-l", "--label")
@moption("-p", "--project")
@moption("--web/--no-web", "-w/ ", default=False)
@click.pass_context
def create(ctx, web, **kwargs):
    run_cmd(
        make_cmd(
            "issue create",
            kwargs=kwargs,
            ctx_obj=ctx.obj,
            flags={"no-input": True, "web": web},
        )
    )


@issue.command()
@click.pass_context
def delete(ctx):
    pass


@issue.command()
@click.pass_context
def edit(ctx):
    pass


@issue.command()
@click.pass_context
def link(ctx):
    pass


@issue.command()
@click.pass_context
def list(ctx):
    pass


@issue.command()
@click.pass_context
def move(ctx):
    pass


@issue.command()
@click.pass_context
def unlink(ctx):
    pass


@issue.command()
@click.pass_context
def view(ctx):
    pass


@issue.command()
@click.pass_context
def watch(ctx):
    pass


@issue.command()
@click.pass_context
def worklog(ctx):
    pass


# board
# epic
# open
# project
# sprint

if __name__ == "__main__":
    fn = ".jira-cli.env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    jira_cli(show_default=True, auto_envvar_prefix="JIRA_CLI")

## Interactive Jira command line.
##
## USAGE
## jira <command> <subcommand> [flags]
##
## MAIN COMMANDS
## board       Board manages Jira boards in a project
## epic        Epic manage epics in a project
## issue       Issue manage issues in a project
## open        Open issue in a browser
## project     Project manages Jira projects
## sprint      Sprint manage sprints in a project board
##
## OTHER COMMANDS
## completion  Output shell completion code for the specified shell (bash or zsh)
## help        Help about any command
## init        Init initializes jira config
## man         Help generate man(7) pages for Jira CLI
## me          Displays configured jira user
## serverinfo  Displays information about the Jira instance
## version     Print the app version information
##
## FLAGS
## -c, --config string    Config file (default is /Users/nailbiter/.config/.jira/.config.yml)
## --debug            Turn on debug output
## -h, --help             help for jira
## -p, --project string   Jira project to look into (defaults to /Users/nailbiter/.config/.jira/.config.yml)
##
## LEARN MORE
## Use 'jira <command> <subcommand> --help' for more information about a command.
## Read the doc or get help at https://github.com/ankitpokhrel/jira-cli
