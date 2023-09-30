"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_jira_cli.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-09-23T16:46:32.651147
    REVISION: ---

==============================================================================="""
import logging
import subprocess
from jinja2 import Template
import click
from requests.auth import HTTPBasicAuth
import typing
from datetime import datetime, timedelta


def ssj(s: str) -> str:
    "Strip Split Join"
    return " ".join(s.strip().split())


def make_cmd(
    cmd: str,
    ctx_obj: dict,
    kwargs: dict = {},
    args: list = [],
    flags: dict[str, bool] = {},
) -> str:
    cmd = ssj(
        Template(
            """{{jira_exec}} {{cmd}}
            {%for k in args%}'{{k}}' {%endfor%}
        {%for k,v in kwargs|dictsort%}{%if v is not none%}--{{k}} '{{v}}' {%endif%}{%endfor%}
        {%for k,v in flags|dictsort%} {%if v%}--{{k}} {%endif%}{%endfor%}
        """
        ).render(
            {"kwargs": kwargs, "args": args, "flags": flags, **ctx_obj, "cmd": cmd}
        )
    )
    return cmd


def run_cmd(cmd, logger=logging):
    logger.warning(f"> {cmd}")
    ec, out = subprocess.getstatusoutput(cmd)
    assert ec == 0, (cmd, ec, out)
    click.echo(out)


def api_init(
    ctx_obj: dict, path: str, api_version: str = "latest"
) -> typing.Tuple[str, str]:
    """
    @return (str,str) (url, auth)
    """
    url = f"https://{ctx_obj['jira_url']}/rest/api/{api_version}/{path}"
    logging.info(url)
    auth = HTTPBasicAuth(ctx_obj["jira_email"], ctx_obj["jira_api_token"])
    return url, auth


def get_add_issue_payload(
    project_id: int,
    summary: str,
    issue_type_id: str,
    labels: list[str] = [],
    custom_fields: list[typing.Tuple[str, str]] = [],
    due_date: typing.Optional[datetime] = None,
    reporter_id: typing.Optional[str] = None,
    assignee_id: typing.Optional[str] = None,
    parent_id: typing.Optional[str] = None,
):
    payload = {
        "fields": {
            ## ??
            # "environment": {
            #     "content": [
            #         {
            #             "content": [{"text": "UAT", "type": "text"}],
            #             "type": "paragraph",
            #         }
            #     ],
            #     "type": "doc",
            #     "version": 1,
            # },
            # "fixVersions": [{"id": "10001"}],
            # "priority": {"id": "20000"},
            # "security": {"id": "10000"},
            ## todo
            ## opt
            **{k: v for k, v in list(custom_fields)},
            # "customfield_10000": "09/Jun/19",
            # "customfield_20000": "06/Jul/19 3:25 PM",
            # "customfield_30000": ["10000", "10002"],
            ## opt todo
            # "description": {
            #     "content": [
            #         {
            #             "content": [
            #                 {
            #                     "text": "Order entry fails when selecting supplier.",
            #                     "type": "text",
            #                 }
            #             ],
            #             "type": "paragraph",
            #         }
            #     ],
            #     "type": "doc",
            #     "version": 1,
            # },
            # "customfield_40000": {
            #     "content": [
            #         {
            #             "content": [
            #                 {"text": "Occurs on all orders", "type": "text"}
            #             ],
            #             "type": "paragraph",
            #         }
            #     ],
            #     "type": "doc",
            #     "version": 1,
            # },
            # "customfield_50000": {
            #     "content": [
            #         {
            #             "content": [
            #                 {
            #                     "text": "Could impact day-to-day work.",
            #                     "type": "text",
            #                 }
            #             ],
            #             "type": "paragraph",
            #         }
            #     ],
            #     "type": "doc",
            #     "version": 1,
            # },
            # "customfield_70000": ["jira-administrators", "jira-software-users"],
            # "customfield_80000": {"value": "red"},
            # "components": [{"id": "10000"}],
            # "timetracking": {"originalEstimate": "10", "remainingEstimate": "5"},
            # "versions": [{"id": "10000"}],
            ## done
            # "parent": {"key": "PROJ-123"},
            **({} if parent_id is None else dict(parent=dict(key=parent_id))),
            # "duedate": "2019-05-11",
            **({} if due_date is None else dict(duedate=due_date.strftime("%Y-%m-%d"))),
            "summary": summary,
            "labels": list(labels),
            "project": {"id": str(project_id)},  # 1
            # "reporter": {"id": "5b10a2844c20165700ede21g"},
            # "assignee": {"id": "5b109f2e9729b51b54dc274d"},
            **({} if reporter_id is None else dict(reporter={"id": reporter_id})),
            **({} if assignee_id is None else dict(assignee={"id": assignee_id})),
            "issuetype": {"id": str(issue_type_id)},
        },
        "update": {},
    }
    return payload
