#!/usr/bin/env python3

import click
import json
import requests
import logging
from jinja2 import Template
from collections import namedtuple

#global const's
ROOT = "https://datawise.backlog.com"
#procedures
class CamelCaseToLower(object):
    def __init__(self):
        self.cache = {}
    def __call__(self,s):
        res = s.lower()
        if res in self.cache and self.cache[res]!=s:
            logging.error("collision")
        self.cache[res] = s
        return res
    def reverse(self,s):
        return self.cache[s]
camel_case_to_lower = CamelCaseToLower()    
class Project(namedtuple("Project","id projectKey name chartEnabled subtaskingEnabled projectLeaderCanEditProjectLeader useWikiTreeView textFormattingRule archived displayOrder useDevAttributes")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
    def __str__(self):
        return f"Project({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
#FIXME: capitalize class names
class Issue(namedtuple("Issue","actualHours assignee attachments category created createdUser customFields description dueDate estimatedHours id issueKey issueType keyId milestone parentIssueId priority projectId resolution sharedFiles stars startDate status summary updated updatedUser versions")):
    _LOGGER = logging.getLogger("Issue")
    @classmethod
    def from_dict(cls,d):
        Issue._LOGGER.debug(d)
        _d = {**d,
                "issueType":IssueType.from_dict(d["issueType"]),
                "assignee":User.from_dict(d["assignee"]),
                "category":[category.from_dict(c) for c in d["category"]],
                "createdUser":User.from_dict(d["createdUser"]),
                "updatedUser":User.from_dict(d["updatedUser"]),
                "priority":Priority.from_dict(d["priority"]),
                "status":status.from_dict(d["status"]),
                "updatedUser":User.from_dict(d["updatedUser"]),
                }
        res = cls(**_d)
        return res
class IssueType(namedtuple("IssueType","id projectId name color displayOrder templateSummary templateDescription",defaults=["",""])):
    _LOGGER = logging.getLogger("IssueType")
    @classmethod
    def from_dict(cls,d):
        IssueType._LOGGER.debug(f"d: {d}")
        return cls(**d)
    def __str__(self):
        return f"IssueType({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
class User(namedtuple("User","id userId name roleType lang mailAddress nulabAccount keyword",defaults=["",""])):
    _LOGGER = logging.getLogger("User")
    @classmethod
    def from_dict(cls,d):
        User._LOGGER.debug(f"d: {d}")
        if d is None:
            return None
        _d = {**d,"nulabAccount":nulabAccount.from_dict(d["nulabAccount"])}
        return cls(**_d)
    def __str__(self):
        return f"User({json.dumps(self._asdict(),indent=2,ensure_ascii=False)});"
class nulabAccount(namedtuple("nulabAccount","nulabId name uniqueId")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
class Priority(namedtuple("Priority","id name")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
class status(namedtuple("status","id projectId name color displayOrder")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)
class category(namedtuple("category","id name displayOrder")):
    @classmethod
    def from_dict(cls,d):
        return cls(**d)

@click.group()
@click.option("--apiKey","--apiKey","apiKey",envvar="BACKLOG_API_KEY")
@click.option("--debug",is_flag=True)
@click.pass_context
def cli(ctx,debug,**kwargs):
    ctx.ensure_object(dict)
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
def get_issues(ctx):
    res = [Issue.from_dict(p) for p in json.loads(requests.get(f"{ROOT}/api/v2/issues",params={**ctx.obj}).text)]
    print(json.dumps([p._asdict() for p in res],indent=2))

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


#TODO: create_issue    
#- cmd: curl -X POST "https://datawise.backlog.com/api/v2/issues?summary=test_summary&apiKey=$BACKLOG_API_SECRET&projectId=74263"
