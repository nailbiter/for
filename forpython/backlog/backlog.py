from _backlog_types import Issue, IssueType, User, Priority, Status, category, nulabAccount, Project
import requests
import logging
from jinja2 import Template
import json
from _backlog import CamelCaseToLower

class BacklogClient:
    _ROOT = "https://datawise.backlog.com"
    def __init__(self, apiKey):
        self._logger = logging.getLogger(self.__class__.__name__)
        self._apiKey = apiKey


    def _get_env(self):
        return {"apiKey":self._apiKey}

    def get_projects(self):
        text = requests.get(f"{self.__class__._ROOT}/api/v2/projects", params={**self._get_env()}).text
        self._logger.info(f"get_projects: {text}")
        projects = [Project.from_dict(p) for p in json.loads(text)]
        return projects

    def get_statuses(self):
        ROOT = self.__class__._ROOT
        projects = [Status.from_dict(p) for p in json.loads(
            requests.get(f"{ROOT}/api/v2/statuses", params={**self._get_env()}).text)]
        return projects

    def get_issues(self, assigneeId=None, count=None, statusId=None, sort=None, order=None):
        ROOT = self.__class__._ROOT
        logger = logging.getLogger("get_issues")

        _kwargs = {}
        _kwargs["assigneeId[]"] = assigneeId
        _kwargs["count"] = count
        _kwargs["statusId[]"] = statusId
        _kwargs["sort"] = sort
        _kwargs["order"] = order
        _kwargs = {k:v for k,v in _kwargs.items() if v is not None}

        if "count" in _kwargs:
            assert _kwargs["count"] <= 100

        text = requests.get(f"{ROOT}/api/v2/issues",
                            params={**self._get_env(), **_kwargs}).text
        logger.info(f"text: {text}")
        issues = [Issue.from_dict(p) for p in json.loads(text)]
        logger.debug(f"we got {len(issues)} issues")
        logger.debug(f"{len(issues)} issues after filtering with assigneeId")
        return issues
#
#    def get_issue_types(ctx, **kwargs):
#        _kwargs = {camel_case_to_lower.reverse(
#            k): v for k, v in kwargs.items()}
#        text = requests.get(Template("{{ROOT}}/api/v2/projects/{{projectId}}/issueTypes").render(
#            {"ROOT": ROOT, **_kwargs}), params={**ctx.obj, **_kwargs}).text
#        logging.info(f"text: {text}")
#        issues = [IssueType.from_dict(p) for p in json.loads(text)]
#        for issue in issues:
#            print(issue)
#
#    def get_priorities(ctx):
#        res = [Priority.from_dict(p) for p in json.loads(
#            requests.get(f"{ROOT}/api/v2/priorities", params={**ctx.obj}).text)]
#        for r in res:
#            print(r)
#
#    # disable this command, as it requires higher privileges than I have now
#    # @cli.command()
#    # @click.pass_context
#    # def get_users(ctx):
#    #    text = requests.get(f"{ROOT}/api/v2/users",params={**ctx.obj}).text
#    #    logging.getLogger("get_users").debug(text)
#    #    users = [User.from_dict(u) for u in json.loads(text)]
#    #    for u in users:
#    #        print(u)
#    #
#    def get_myself(ctx):
#        text = requests.get(f"{ROOT}/api/v2/users/myself",
#                            params={**ctx.obj}).text
#        logging.getLogger("get_myself").debug(text)
#        user = User.from_dict(json.loads(text))
#        for u in [user]:
#            print(u)
#
#    def add_issue(ctx, **kwargs):
#        _kwargs = {camel_case_to_lower.reverse(
#            k): v for k, v in kwargs.items()}
#        logging.info(f"_kwargs: {_kwargs}")
#        res = json.loads(requests.post(
#            f"{ROOT}/api/v2/issues", params={**ctx.obj, **_kwargs}).text)
#        print(json.dumps(res, indent=2))
