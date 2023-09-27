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
import typing
import numpy as np
import webbrowser
import tqdm
import natsort
from dotenv import load_dotenv
import os
from os import path
import logging
import functools
import itertools
from jinja2 import Template
from _jira_cli import run_cmd, make_cmd, ssj, api_init
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


@api.group(name="issue")
@click.pass_context
def api_issue(ctx):


@api_issue.command()
@click.pass_context
def add(ctx):
    """
    https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issues/#api-rest-api-3-issue-post
    """
    # jira-cli.py wrap -p JC issue create -t Task -P JC-1 -s 'closing a sprint and view reports'

    
    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org

    url, auth = api_init(ctx.obj, "issue")
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    payload = json.dumps(
        {
            "fields": {
                "assignee": {"id": "5b109f2e9729b51b54dc274d"},
                "components": [{"id": "10000"}],
                "customfield_10000": "09/Jun/19",
                "customfield_20000": "06/Jul/19 3:25 PM",
                "customfield_30000": ["10000", "10002"],
                "customfield_40000": {
                    "content": [
                        {
                            "content": [
                                {"text": "Occurs on all orders", "type": "text"}
                            ],
                            "type": "paragraph",
                        }
                    ],
                    "type": "doc",
                    "version": 1,
                },
                "customfield_50000": {
                    "content": [
                        {
                            "content": [
                                {
                                    "text": "Could impact day-to-day work.",
                                    "type": "text",
                                }
                            ],
                            "type": "paragraph",
                        }
                    ],
                    "type": "doc",
                    "version": 1,
                },
                "customfield_60000": "jira-software-users",
                "customfield_70000": ["jira-administrators", "jira-software-users"],
                "customfield_80000": {"value": "red"},
                "description": {
                    "content": [
                        {
                            "content": [
                                {
                                    "text": "Order entry fails when selecting supplier.",
                                    "type": "text",
                                }
                            ],
                            "type": "paragraph",
                        }
                    ],
                    "type": "doc",
                    "version": 1,
                },
                "duedate": "2019-05-11",
                "environment": {
                    "content": [
                        {
                            "content": [{"text": "UAT", "type": "text"}],
                            "type": "paragraph",
                        }
                    ],
                    "type": "doc",
                    "version": 1,
                },
                "fixVersions": [{"id": "10001"}],
                "issuetype": {"id": "10000"},
                "labels": ["bugfix", "blitz_test"],
                "parent": {"key": "PROJ-123"},
                "priority": {"id": "20000"},
                "project": {"id": "10000"}, #1
                "reporter": {"id": "5b10a2844c20165700ede21g"},
                "security": {"id": "10000"},
                "summary": "Main order flow broken",
                "timetracking": {"originalEstimate": "10", "remainingEstimate": "5"},
                "versions": [{"id": "10000"}],
            },
            "update": {},
        }
    )

    response = requests.request("POST", url, data=payload, headers=headers, auth=auth)

    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )


@api.command()
@click.pass_context
def application_role(ctx):
    url, auth = api_init(ctx.obj, "applicationrole")
    headers = {"Accept": "application/json"}
    # originally latest->3
    response = requests.request("GET", url, headers=headers, auth=auth)
    click.echo(response.text)


@api.command()
@moption("-i", "--issue-name", required=True)
@moption("--open/--no-open", " /-n", "open_", default=True)
@click.pass_context
def url(ctx, issue_name, open_):
    "https://nailbiter91.atlassian.net/browse/SKP-19"
    url = f"https://{ctx.obj['jira_url']}/browse/{issue_name}"
    click.echo(url)
    if open_:
        webbrowser.open(url)


@api.command()
@moption("-j", "--jql", default="", help="'project = HSP'")
@moption(
    "-f",
    "--jql-file",
    type=click.Path(allow_dash=True),
    help="takes precedence over `jql` key",
)
@_build_click_options
@moption("--raw/--no-raw", "-r/ ", default=False)
@moption("-m", "--max-results", type=int)
@click.pass_context
def jql(ctx, jql, jql_file, raw, max_results, **format_df_kwargs):
    """
    helpful jq's:
    * '.[]|[.key,.fields.summary]|@tsv'
    """
    # originally latest->3
    url, auth = api_init(ctx.obj, "search")
    headers = {"Accept": "application/json"}

    if jql_file is not None:
        with click.open_file(jql_file) as f:
            jql = f.read().strip()
    logging.warning(f"jql: '{jql}'")
    query = dict(jql=jql)

    if max_results is not None:
        query["max_results"] = max_results
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
@moption("-p", "--project")
@click.pass_context
def wrap(ctx, **kwargs):
    """
    very thin wrap around https://github.com/ankitpokhrel/jira-cli/blob/main/LICENSE
    """
    ctx.obj["wrap_kwargs"] = kwargs


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
@click.pass_context
def clone(ctx, issue_key, **kwargs):
    run_cmd(
        make_cmd(
            "issue clone",
            kwargs={**kwargs, **ctx.obj["wrap_kwargs"]},
            args=[issue_key],
            ctx_obj=ctx.obj,
        )
    )


@wrap.group()
@click.pass_context
def epic(ctx):
    pass


@epic.command(name="create")
@moption("-n", "--name", required=True)
@moption("-s", "--summary", required=True)
@moption("-b", "--body")
@moption("-y", "--priority")
@moption("-r", "--reporter")
@moption("-a", "--assignee")
@moption("-l", "--label")
@moption("-C", "--component")
@click.pass_context
def create_epic(ctx, **kwargs):
    "create an epic"
    run_cmd(
        make_cmd(
            "epic create",
            kwargs={**kwargs, **ctx.obj["wrap_kwargs"]},
            flags={"no-input": True},
            ctx_obj=ctx.obj,
        )
    )


@epic.command()
@click.pass_context
def add(ctx):
    "add issues to an epic"


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
@moption("-s", "--summary", "summaries", multiple=True)
@moption("-f", "--summary-file", type=click.Path(allow_dash=True))
@moption("-b", "--body")
@moption("-P", "--parent", help="can be used to attach an epic")
@moption("-y", "--priority")
@moption("-r", "--reporter")
@moption("-a", "--assignee")
@moption("-l", "--label")
@moption("--web/--no-web", "-w/ ", default=False)
@moption("--dry-run/--no-dry-run", default=False)
@click.pass_context
def create(ctx, web, summary_file, dry_run, summaries, **kwargs):
    ## FIXME: for some reason, simple #findout
    ## `summaries = list(summaries) ` does not work
    if summaries:
        summaries = list(summaries)
    else:
        summaries = []

    if summary_file is not None:
        with click.open_file(summary_file) as f:
            lines = f.readlines()
        summaries.extend(lines)
    summaries = [summary.strip() for summary in summaries if summary.strip()]
    assert len(summaries) > 0

    if dry_run:
        logging.warning(summaries)
        logging.warning("dry run")
        exit(0)

    for summary in tqdm.tqdm(summaries):
        run_cmd(
            make_cmd(
                "issue create",
                kwargs={"summary": summary, **kwargs, **ctx.obj["wrap_kwargs"]},
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
