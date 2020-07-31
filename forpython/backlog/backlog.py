#!/usr/bin/env python3

import click
import json
import requests
import logging
from jinja2 import Template
from _backlog import CamelCaseToLower, Stringer
from _backlog_types import Issue, IssueType, User, Priority, Status, category, nulabAccount

#global const's
ROOT = "https://datawise.backlog.com"
#global var's
stringer = Stringer()
#procedures
camel_case_to_lower = CamelCaseToLower()

@click.group()
@click.option("--apiKey","--apiKey","apiKey",envvar="BACKLOG_API_KEY")
@click.option("--debug",is_flag=True)
@click.option("--oformat",type=click.Choice(Stringer.MODES),default=Stringer.MODES[0])
@click.pass_context
def cli(ctx,debug,oformat,**kwargs):
    ctx.ensure_object(dict)
    stringer.set_format(oformat)
    if debug:
        logging.basicConfig(level=logging.DEBUG)
    for k,v in kwargs.items():
        ctx.obj[k] = v

@cli.command()
@click.pass_context
def get_projects(ctx):
    projects = [Project.from_dict(p) for p in json.loads(requests.get(f"{ROOT}/api/v2/projects",params={**ctx.obj}).text)]
    for p in projects:
        print(p)

@cli.command()
@click.pass_context
def get_statuses(ctx):
    projects = [Status.from_dict(p) for p in json.loads(requests.get(f"{ROOT}/api/v2/statuses",params={**ctx.obj}).text)]
    print(stringer.stringify_list(projects))

@cli.command()
@click.pass_context
@click.option(f"--{camel_case_to_lower('assigneeId')}",type=int)
@click.option(f"--{camel_case_to_lower('count')}",type=int)
@click.option(f"--{camel_case_to_lower('statusId')}",type=int)
@click.option(f"--{camel_case_to_lower('sort')}",type=click.Choice(["created","createdUser","updated","updatedUser","assignee","startDate","dueDate","estimatedHours","actualHours","childIssue"]))
@click.option(f"--{camel_case_to_lower('order')}",type=click.Choice(["desc","asc"]))
def get_issues(ctx,**kwargs):
    logger = logging.getLogger("get_issues")
    logger.debug(f"kwargs: {kwargs}")
    _kwargs = {camel_case_to_lower.reverse(k):v for k,v in kwargs.items()}
    for k in ["assigneeId","statusId"]:
        if k in _kwargs:
            _kwargs[f"{k}[]"] = _kwargs[k]
            del _kwargs[k]
    if "count" in _kwargs and _kwargs["count"] is not None:
        assert _kwargs["count"]<=100
    text = requests.get(f"{ROOT}/api/v2/issues",params={**ctx.obj,**_kwargs}).text
    logger.debug(f"text: {text}")
    issues = [Issue.from_dict(p) for p in json.loads(text)]
    logger.debug(f"we got {len(issues)} issues")
    logger.debug(f"{len(issues)} issues after filtering with assigneeId")
    print(stringer.stringify_list(issues))

@cli.command()
@click.pass_context
@click.argument(camel_case_to_lower("projectId"),type=int)
def get_issue_types(ctx,**kwargs):
    _kwargs = {camel_case_to_lower.reverse(k):v for k,v in kwargs.items()}
    text = requests.get(Template("{{ROOT}}/api/v2/projects/{{projectId}}/issueTypes").render({"ROOT":ROOT,**_kwargs}),params={**ctx.obj,**_kwargs}).text
    logging.info(f"text: {text}")
    issues = [IssueType.from_dict(p) for p in json.loads(text)]
    for issue in issues:
        print(issue)

@cli.command()
@click.pass_context
def get_priorities(ctx):
    res = [Priority.from_dict(p) for p in json.loads(requests.get(f"{ROOT}/api/v2/priorities",params={**ctx.obj}).text)]
    for r in res:
        print(r)

# disable this command, as it requires higher privileges than I have now
#@cli.command()
#@click.pass_context
#def get_users(ctx):
#    text = requests.get(f"{ROOT}/api/v2/users",params={**ctx.obj}).text
#    logging.getLogger("get_users").debug(text)
#    users = [User.from_dict(u) for u in json.loads(text)]
#    for u in users:
#        print(u)
#
@cli.command()
@click.pass_context
def get_myself(ctx):
    text = requests.get(f"{ROOT}/api/v2/users/myself",params={**ctx.obj}).text
    logging.getLogger("get_myself").debug(text)
    user = User.from_dict(json.loads(text))
    for u in [user]:
        print(u)

@cli.command()
@click.pass_context
@click.argument(camel_case_to_lower("summary"))
@click.argument(camel_case_to_lower("projectId"),type=int)
@click.argument(camel_case_to_lower("priorityId"),type=int)
@click.argument(camel_case_to_lower("issueTypeId"),type=int)
@click.option(f"--{camel_case_to_lower('assigneeId')}",type=int)
@click.option(f"--{camel_case_to_lower('description')}")
def add_issue(ctx,**kwargs):
    _kwargs = {camel_case_to_lower.reverse(k):v for k,v in kwargs.items()}
    logging.info(f"_kwargs: {_kwargs}")
    res = json.loads(requests.post(f"{ROOT}/api/v2/issues",params={**ctx.obj,**_kwargs}).text)
    print(json.dumps(res,indent=2))
