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

# import logging
import click
import operator
import typing
import numpy as np
import webbrowser
import tqdm
import natsort
from dotenv import load_dotenv
import os
from os import path
import functools
import itertools
from jinja2 import Template
import time
import copy
from _jira_cli import (
    jira_issue_name_and_ctx_to_url,
    run_cmd,
    make_cmd,
    ssj,
    api_init,
    get_add_issue_payload,
    my_request,
    WrappedLogging,
    string_to_description,
)
import requests
from requests.auth import HTTPBasicAuth
import json
from alex_leontiev_toolbox_python.utils.edit_json import edit_json
from alex_leontiev_toolbox_python.utils.click_helpers.format_dataframe import (
    AVAILABLE_OUT_FORMATS,
    format_df,
    build_click_options,
    apply_click_options,
)
import pandas as pd

moption = functools.partial(click.option, show_envvar=True)
_build_click_options = functools.partial(build_click_options, option_factory=moption)

my_logging = WrappedLogging()


@click.group()
@moption("--jira-exec", default="jira")
@moption("--debug/--no-debug", "-d/ ", default=False)
@moption("--debug-file", type=str, default="@random")
@click.pass_context
def jira_cli(ctx, jira_exec, debug, debug_file):
    my_logging.configure_debug(debug=debug, debug_file=debug_file)
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


@api.group(name="project")
@click.pass_context
def api_project(ctx):
    pass


@api_project.command()
@_build_click_options
@moption("--simplify/--no-simplify", "-s/ ", default=False)
@click.pass_context
def ls(ctx, simplify, **format_df_kwargs):
    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org

    url, auth = api_init(ctx.obj, "project/search")
    headers = {"Accept": "application/json"}
    my_logging.info(url)
    response = requests.request("GET", url, headers=headers, auth=auth)
    my_logging.info(response.text)

    df = pd.DataFrame(json.loads(response.text)["values"])
    if simplify:
        df = df[["id", "name"]]
    click.echo(apply_click_options(df, format_df_kwargs))


@api.group(name="issue")
@click.pass_context
def api_issue(ctx):
    pass


@api.group(name="issue-type")
@click.pass_context
def api_issue_type(ctx):
    pass


@api.group(name="link-type")
@click.pass_context
def api_link_type(ctx):
    pass


@api_issue_type.command(name="ls")
@_build_click_options
@moption("--simplify/--no-simplify", "-s/ ", default=False)
@click.pass_context
def api_issue_type_ls(ctx, simplify, **format_df_kwargs):
    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org

    url, auth = api_init(ctx.obj, "issuetype")
    headers = {"Accept": "application/json"}
    response = my_request("GET", url, headers=headers, auth=auth)

    # my_logging.warning(response.text)
    df = pd.DataFrame(json.loads(response.text))
    if simplify:
        df = df[["id", "name", "scope"]]

    click.echo(apply_click_options(df, format_df_kwargs))


@api_issue.command(name="subtask")
# @_build_click_options
@moption("-n", "--subtask-name", type=str, required=True)
@moption("-p", "--parent-issue-key", type=str, required=True)
@moption("-P", "--project-id", type=int, required=True)
@moption("-t", "--issue-type-id", type=int, required=True)
@click.pass_context
def api_issue_subtask(
    ctx,
    parent_issue_key,
    project_id,
    issue_type_id,
    subtask_name,  # **format_df_kwargs
):
    """
    * https://community.atlassian.com/t5/Jira-questions/How-to-add-subtasks-to-an-existing-issue-through-Jira-REST-API/qaq-p/2676037
    * https://community.atlassian.com/t5/Jira-questions/Creating-Sub-Task-In-Jira-via-API-Rest/qaq-p/774749
    """
    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org

    url, auth = api_init(ctx.obj, "issue", api_version="3")
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    response = my_request(
        "POST",
        url,
        headers=headers,
        auth=auth,
        data=json.dumps(
            {
                "fields": {
                    "project": {"id": project_id},
                    "parent": {"key": parent_issue_key},
                    "summary": subtask_name,
                    "description": {
                        "type": "doc",
                        "version": 1,
                        "content": [
                            {
                                "type": "paragraph",
                                "content": [
                                    {
                                        ##"text": "This is a detailed description of the subtask.",
                                        "text": "",
                                        "type": "text",
                                    }
                                ],
                            }
                        ],
                    },
                    "issuetype": {"id": issue_type_id},
                }
            }
        ),
    )

    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )

    # # my_logging.warning(response.text)
    # df = pd.DataFrame(json.loads(response.text))
    # if simplify:
    #     df = df[["id", "name", "scope"]]

    # click.echo(apply_click_options(df, format_df_kwargs))


@api_link_type.command(name="ls")
@_build_click_options
@click.pass_context
def api_link_type_ls(ctx, **format_df_kwargs):
    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org

    url, auth = api_init(ctx.obj, "issueLinkType")
    headers = {"Accept": "application/json"}
    response = my_request("GET", url, headers=headers, auth=auth)

    # my_logging.warning(response.text)
    df = pd.DataFrame(json.loads(response.text)["issueLinkTypes"])

    click.echo(apply_click_options(df, format_df_kwargs))


@api.group(name="user")
@click.pass_context
def api_user(ctx):
    pass


def _compare_updates(prev_last_updates: dict, last_updates: dict) -> bool:
    return prev_last_updates == last_updates


@api_issue.command(name="watchdog")
@moption("-i", "--issue-key", "issue_keys", type=str, required=True, multiple=True)
@moption("-s", "--sleep-minutes", type=click.IntRange(min=1), default=1)
@moption("-l", "--slack-url", type=str, required=True)
@click.pass_context
def api_issue_watchdog(ctx, issue_keys, sleep_minutes, slack_url):
    headers = {"Accept": "application/json"}

    # args = [
    #     slack_url,
    #     json.dumps(dict(text="test")),
    # ]
    # kwargs = dict(
    #     headers={"Content-type": "application/json"},
    # )
    # my_logging.warning(dict(args=args, kwargs=kwargs))
    # res = requests.post(*args, **kwargs)
    # my_logging.warning(res)

    prev_last_updates = None
    while True:
        last_updates = {}
        for issue_id in issue_keys:
            url, auth = api_init(ctx.obj, f"issue/{issue_id}")
            response = my_request("GET", url, headers=headers, auth=auth)
            my_logging.info(response)
            # my_logging.info(json.loads(response.text))
            last_updates[issue_id] = pd.to_datetime(
                json.loads(response.text)["fields"]["updated"]
            )

        my_logging.warning(pd.Series(last_updates))
        if (prev_last_updates is None) or _compare_updates(
            prev_last_updates, last_updates
        ):
            pass
        else:
            my_logging.warning(f"change: {prev_last_updates,last_updates}")
            df = pd.DataFrame(dict(prev=prev_last_updates, now=last_updates))
            changed_issue_ids = df[df["prev"] != df["now"]].index.to_list()
            my_logging.warning(changed_issue_ids)
            args = [
                slack_url,
                json.dumps(
                    dict(text=f'api-issue-watchdog: {", ".join(changed_issue_ids)}')
                ),
            ]
            kwargs = dict(
                headers={"Content-type": "application/json"},
            )
            my_logging.warning(dict(args=args, kwargs=kwargs))
            res = requests.post(*args, **kwargs)
            my_logging.warning(res)

        prev_last_updates = last_updates
        time.sleep(sleep_minutes * 60)


@api_issue.command(name="comment")
@moption("-i", "--issue-key", type=str, required=True)
@moption("-t", "--text", type=str, required=True)
@click.pass_context
def api_issue_comment(ctx, issue_key, text):
    """
    https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issue-comments/#api-rest-api-3-issue-issueidorkey-comment-post
    """
    url, auth = api_init(ctx.obj, f"issue/{issue_key}/comment", api_version="3")
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    payload = {
        "body": {
            "content": [
                {
                    "content": [
                        {
                            # "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eget venenatis elit. Duis eu justo eget augue iaculis fermentum. Sed semper quam laoreet nisi egestas at posuere augue semper.",
                            "text": text,
                            "type": "text",
                        }
                    ],
                    "type": "paragraph",
                }
            ],
            "type": "doc",
            "version": 1,
        },
        # "visibility": {
        #     "identifier": "Administrators",
        #     "type": "role",
        #     "value": "Administrators",
        # },
    }

    response = my_request(
        "POST", url, headers=headers, auth=auth, data=json.dumps(payload)
    )

    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )


@api_user.command(name="ls")
@_build_click_options
@moption("--simplify/--no-simplify", "-s/ ", default=False)
@click.pass_context
def api_user_ls(ctx, simplify, **format_df_kwargs):
    url, auth = api_init(ctx.obj, "users/search")
    headers = {"Accept": "application/json"}

    response = my_request("GET", url, headers=headers, auth=auth)
    df = pd.DataFrame(json.loads(response.text))
    if simplify:
        df = df[["accountId", "displayName", "emailAddress"]]
    click.echo(apply_click_options(df, format_df_kwargs))


@api_issue.command()
@moption("-i", "--issue-key", type=str, required=True)
@click.pass_context
def get_edit_metadata(ctx, issue_key):
    url, auth = api_init(ctx.obj, f"issue/{issue_key}/editmeta", api_version="3")
    headers = {"Accept": "application/json"}
    response = requests.request("GET", url, headers=headers, auth=auth)

    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )


@api_issue.command(name="edit")
@moption("-i", "--issue-key", type=str, required=True)
@moption("-o", "--time-tracking-original-estimate", type=str)
@moption("-R", "--time-tracking-remaining-estimate", type=str)
@moption("-c", "--custom-field", "custom_fields", type=(str, str), multiple=True)
@moption("-s", "--summary", type=str)
@moption("-d", "--description", type=str)
@moption("-f", "--description-file", type=click.Path(allow_dash=True))
@click.pass_context
def api_issue_edit(*args, **kwargs):
    return _real_api_issue_edit(*args, **kwargs)


def _real_api_issue_edit(
    ctx,
    issue_key,
    summary,
    description,
    description_file,
    time_tracking_original_estimate,
    time_tracking_remaining_estimate,
    custom_fields,
):
    """
    https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issues/#api-rest-api-3-issue-issueidorkey-put

    TODO:
    1. set the epic
    """
    url, auth = api_init(ctx.obj, f"issue/{issue_key}", api_version="3")
    my_logging.info(f"url: {url}")
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    payload = {"fields": {}, "update": {}}
    if (
        time_tracking_original_estimate is not None
        or time_tracking_remaining_estimate is not None
    ):
        payload["fields"]["timetracking"] = {}
    if time_tracking_original_estimate is not None:
        payload["fields"]["timetracking"][
            "originalEstimate"
        ] = time_tracking_original_estimate
    if time_tracking_remaining_estimate is not None:
        payload["fields"]["timetracking"][
            "remainingEstimate"
        ] = time_tracking_remaining_estimate

    fields = dict(custom_fields)
    if summary is not None:
        fields["summary"] = summary
    if description is not None:
        fields["description"] = string_to_description(description)
    if description_file is not None:
        with click.open_file(description_file) as f:
            fields["description"] = string_to_description(f.read().strip())

    for k, v in fields.items():
        payload["fields"][k] = v

    my_logging.warning(payload)
    if payload["fields"] == {} and payload["update"] == {}:
        my_logging.warning("empty payload in `edit` ==> ignore")
        payload = json.dumps(payload)

        response = requests.request(
            "PUT", url, data=payload, headers=headers, auth=auth
        )
        click.echo(response.text)


@api_issue.command(name="pseudo-clone")
@moption("-i", "--issue-id", type=str, required=True)
@moption("-f", "--json-edit-cmd-file", type=click.Path(allow_dash=True))
@moption("--open-url/--no-open-url", "-O/ ", default=False)
@moption("-s", "--fields-to-skip-file", type=click.Path())
@moption(
    "-c",
    "--clone-link-type",
    help="unset with '**UNSET**'",
    default="Cloners",
    type=str,
)
@moption("--clone-revert/--no-clone-revert", "-r/ ", default=False)
@moption("-u", "--custom-field", "custom_fields", type=(str, str), multiple=True)
@moption("-s", "--summary", type=str)
@moption("-d", "--description", type=str)
@moption("-f", "--description-file", type=click.Path(allow_dash=True))
@moption("--copy-links/--no-copy-links", "-l/ ", default=False)
@moption(
    "--skip-copy-link",
    "skip_copy_links",
    type=(str, click.Choice(["in", "out", "both"])),
    multiple=True,
)
@click.pass_context
def api_issue_clone(
    ctx,
    skip_copy_links,
    copy_links,
    issue_id,
    json_edit_cmd_file,
    open_url,
    fields_to_skip_file,
    clone_link_type,
    clone_revert,
    custom_fields,
    summary,
    description,
    description_file,
):
    """
    TODO:
      1. link "cloned"
      2. copy comments
    """
    if clone_link_type == "**UNSET**":
        clone_link_type = None

    url, auth = api_init(ctx.obj, "issue", api_version=2)
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    if fields_to_skip_file is None:
        fields_to_skip = {
            "statuscategorychangedate": "Field 'statuscategorychangedate' cannot be set. It is not on the appropriate screen, or unknown.",
            "timespent": "Field 'timespent' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10030": "Field 'customfield_10030' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10031": "Field 'customfield_10031' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10032": "Field 'customfield_10032' cannot be set. It is not on the appropriate screen, or unknown.",
            "fixVersions": "Field 'fixVersions' cannot be set. It is not on the appropriate screen, or unknown.",
            "aggregatetimespent": "Field 'aggregatetimespent' cannot be set. It is not on the appropriate screen, or unknown.",
            "resolution": "Field 'resolution' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10037": "Field 'customfield_10037' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10027": "Field 'customfield_10027' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10028": "Field 'customfield_10028' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10029": "Field 'customfield_10029' cannot be set. It is not on the appropriate screen, or unknown.",
            "resolutiondate": "Field 'resolutiondate' cannot be set. It is not on the appropriate screen, or unknown.",
            "workratio": "Field 'workratio' cannot be set. It is not on the appropriate screen, or unknown.",
            "lastViewed": "Field 'lastViewed' cannot be set. It is not on the appropriate screen, or unknown.",
            "watches": "Field 'watches' cannot be set. It is not on the appropriate screen, or unknown.",
            "created": "Field 'created' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10020": "Field 'customfield_10020' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10022": "Field 'customfield_10022' cannot be set. It is not on the appropriate screen, or unknown.",
            "priority": "Field 'priority' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10023": "Field 'customfield_10023' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10024": "Field 'customfield_10024' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10025": "Field 'customfield_10025' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10026": "Field 'customfield_10026' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10016": "Field 'customfield_10016' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10017": "Field 'customfield_10017' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10018": "Field 'customfield_10018' cannot be set. It is not on the appropriate screen, or unknown.",
            "aggregatetimeoriginalestimate": "Field 'aggregatetimeoriginalestimate' cannot be set. It is not on the appropriate screen, or unknown.",
            "timeestimate": "Field 'timeestimate' cannot be set. It is not on the appropriate screen, or unknown.",
            "versions": "Field 'versions' cannot be set. It is not on the appropriate screen, or unknown.",
            "issuelinks": "Field does not support update 'issuelinks'",
            "updated": "Field 'updated' cannot be set. It is not on the appropriate screen, or unknown.",
            "status": "Field 'status' cannot be set. It is not on the appropriate screen, or unknown.",
            "components": "Field 'components' cannot be set. It is not on the appropriate screen, or unknown.",
            "timeoriginalestimate": "Field 'timeoriginalestimate' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10010": "Field 'customfield_10010' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10014": "Field 'customfield_10014' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10015": "Field 'customfield_10015' cannot be set. It is not on the appropriate screen, or unknown.",
            "timetracking": "Field 'timetracking' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10005": "Field 'customfield_10005' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10006": "Field 'customfield_10006' cannot be set. It is not on the appropriate screen, or unknown.",
            "security": "Field 'security' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10007": "Field 'customfield_10007' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10008": "Field 'customfield_10008' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10009": "Field 'customfield_10009' cannot be set. It is not on the appropriate screen, or unknown.",
            "aggregatetimeestimate": "Field 'aggregatetimeestimate' cannot be set. It is not on the appropriate screen, or unknown.",
            "creator": "Field 'creator' cannot be set. It is not on the appropriate screen, or unknown.",
            "subtasks": "Field 'subtasks' cannot be set. It is not on the appropriate screen, or unknown.",
            "aggregateprogress": "Field 'aggregateprogress' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10001": "Field 'customfield_10001' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10002": "Field 'customfield_10002' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10003": "Field 'customfield_10003' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10004": "Field 'customfield_10004' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10038": "Field 'customfield_10038' cannot be set. It is not on the appropriate screen, or unknown.",
            "customfield_10039": "Field 'customfield_10039' cannot be set. It is not on the appropriate screen, or unknown.",
            "environment": "Field 'environment' cannot be set. It is not on the appropriate screen, or unknown.",
            "duedate": "Field 'duedate' cannot be set. It is not on the appropriate screen, or unknown.",
            "progress": "Field 'progress' cannot be set. It is not on the appropriate screen, or unknown.",
            "comment": "Field 'comment' cannot be set. It is not on the appropriate screen, or unknown.",
            "votes": "Field 'votes' cannot be set. It is not on the appropriate screen, or unknown.",
            "worklog": "Field 'worklog' cannot be set. It is not on the appropriate screen, or unknown.",
            "issuerestriction": None,
            "rankAfterIssue": None,
            "rankBeforeIssue": None,
            "customfield_10019": None,
        }.keys()
    else:
        with open(fields_to_skip_file) as f:
            fields_to_skip = json.load(f)

    json_edit_cmd = {}
    if json_edit_cmd_file is not None:
        with click.open_file(json_edit_cmd_file) as f:
            json_edit_cmd = json.load(f)

    # payload = get_add_issue_payload(**kwargs)
    url_, _ = api_init(ctx.obj, f"issue/{issue_id}", api_version=2)
    response = my_request("GET", url_, headers=headers, auth=auth)
    original_payload = json.loads(response.text)
    payload = copy.deepcopy(original_payload)
    for k in ["key", "self", "id"]:
        payload.pop(k)
    for k in fields_to_skip:
        if k in payload["fields"]:
            payload["fields"].pop(k)
    if json_edit_cmd:
        payload = edit_json(payload, json_edit_cmd)
    payload = json.dumps(payload)

    response = my_request("POST", url, data=payload, headers=headers, auth=auth)
    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )

    new_issue_key = json.loads(response.text)["key"]
    if open_url:
        webbrowser.open(jira_issue_name_and_ctx_to_url(new_issue_key, ctx))

    if clone_link_type is not None:
        args = [issue_id, new_issue_key]
        if clone_revert:
            args = args[::-1]
        _real_link(ctx, *args, clone_link_type)

    if copy_links:
        skip_copy_links = set(skip_copy_links)
        for r in tqdm.tqdm(original_payload["fields"]["issuelinks"]):
            link_name = r["type"]["name"]
            if (link_name, "both") in skip_copy_links:
                continue
            if (r.get("inwardIssue") is not None) and (
                ((link_name, "in") not in skip_copy_links)
            ):
                _key = r.get("inwardIssue")["key"]
                _real_link(ctx, _key, new_issue_key, link_name)
            elif (r.get("outwardIssue") is not None) and (
                ((link_name, "out") not in skip_copy_links)
            ):
                _key = r.get("outwardIssue")["key"]
                _real_link(ctx, new_issue_key, _key, link_name)
            else:
                raise NotImplementedError(r)
        # raise NotImplementedError()

    _real_api_issue_edit(
        ctx,
        custom_fields=custom_fields,
        issue_key=new_issue_key,
        time_tracking_original_estimate=None,
        time_tracking_remaining_estimate=None,
        summary=summary,
        description=description,
        description_file=description_file,
    )

    # click.echo(new_issue_key)


@api_issue.command(name="ls")
@moption("-i", "--issue-id", "issue_ids", required=True, multiple=True)
@click.pass_context
def api_issue_ls(ctx, issue_ids):
    headers = {"Accept": "application/json"}
    for issue_id in issue_ids:
        url, auth = api_init(ctx.obj, f"issue/{issue_id}")
        response = my_request("GET", url, headers=headers, auth=auth)
        click.echo(response.text)


@api.command()
@moption("-u", "--url-suffix", required=True, type=str)
@moption("-a", "--api-version", type=str)
@moption(
    "-m", "--method", type=click.Choice(["GET", "POST", "PUT", "DELETE"]), default="GET"
)
@moption("-d", "--data-file", type=click.Path(allow_dash=True))
@moption("-h", "--headers-file", type=click.Path())
@click.pass_context
def request(ctx, url_suffix, api_version, method, data_file, headers_file):
    url, auth = api_init(
        ctx.obj,
        url_suffix,
        **({} if api_version is None else dict(api_version=api_version)),
    )

    if headers_file is None:
        headers = {"Accept": "application/json"}
    else:
        with open(headers_file) as f:
            headers = json.load(f)

    kwargs = dict(headers=headers, auth=auth)
    if data_file is not None:
        with click.open_file(data_file) as f:
            kwargs["data"] = json.dumps(json.load(f))
    response = my_request(method, url, **kwargs)
    click.echo(response.text)


@api_issue.command(name="import")
@moption("-f", "--input-file", type=click.Path(allow_dash=True), required=True)
@moption("-p", "--patch", "patches", type=(str, str), multiple=True)
@click.pass_context
def api_issue_import(ctx, input_file, patches):
    """
    todo: output same as input, but together with new issue IDs
    (also save this out to tmp file)
    """
    with click.open_file(input_file) as f:
        rs = json.load(f)
    patches = dict(patches)
    for r in tqdm.tqdm(rs):
        r = {**r, **patches}
        _real_api_issue_add(ctx, **r)


@api_issue.command(name="add")
@moption("-p", "--project-id", type=int, required=True)
@moption("-t", "--issue_type_id", type=int, required=True)
@moption("-s", "--summary", type=str, required=True)
@moption("-l", "--label", "labels", type=str, multiple=True)
@moption("-c", "--custom-field", "custom_fields", type=(str, str), multiple=True)
@moption("-D", "--due-date", type=click.DateTime(["%Y-%m-%d"]))
@moption("-r", "--reporter-id", type=str)
@moption("-a", "--assignee-id", type=str)
@moption("-P", "--parent-id", type=str)
@moption("-o", "--original-time-estimate-minutes", type=click.IntRange(min=0))
@moption("-f", "--json-edit-cmd-file", type=click.Path(allow_dash=True))
@moption("-d", "--description", type=str)
@moption("--open-url/--no-open-url", "-O/ ", default=False)
@click.pass_context
def api_issue_add(ctx, **kwargs):
    """
    https://developer.atlassian.com/cloud/jira/platform/rest/v3/api-group-issues/#api-rest-api-3-issue-post
    """
    # jira-cli.py wrap -p JC issue create -t Task -P JC-1 -s 'closing a sprint and view reports'

    # This code sample uses the 'requests' library:
    # http://docs.python-requests.org
    return _real_api_issue_add(ctx, **kwargs)


def _real_api_issue_add(
    ctx,
    open_url: bool = False,
    json_edit_cmd_file: typing.Optional[str] = None,
    **kwargs,
):
    json_edit_cmd = {}
    if json_edit_cmd_file is not None:
        with click.open_file(json_edit_cmd_file) as f:
            json_edit_cmd = json.load(f)

    url, auth = api_init(ctx.obj, "issue")
    headers = {"Accept": "application/json", "Content-Type": "application/json"}

    payload = get_add_issue_payload(**kwargs)
    if json_edit_cmd:
        payload = edit_json(payload, json_edit_cmd)
    payload = json.dumps(payload)

    response = my_request("POST", url, data=payload, headers=headers, auth=auth)
    click.echo(
        json.dumps(
            json.loads(response.text), sort_keys=True, indent=4, separators=(",", ": ")
        )
    )

    if open_url:
        webbrowser.open(
            jira_issue_name_and_ctx_to_url(json.loads(response.text)["key"], ctx)
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
    url = jira_issue_name_and_ctx_to_url(issue_name, ctx)
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
@moption("--simplify/--no-simplify", "-s/ ", default=False)
@moption("-F", "--fields", type=str)
@click.pass_context
def jql(ctx, jql, jql_file, raw, max_results, simplify, fields, **format_df_kwargs):
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
    my_logging.warning(f"jql: '{jql}'")
    query = dict(jql=jql)

    if max_results is not None:
        query["maxResults"] = max_results
    if fields is not None:
        query["fields"] = fields
    response = my_request("GET", url, headers=headers, params=query, auth=auth)

    if raw:
        click.echo(response.text)
    else:
        # df = pd.DataFrame(json.loads(response.text))
        l = json.loads(response.text)["issues"]
        my_logging.info(f"l1: {l}")
        # l = list(itertools.chain(*l))
        # my_logging.warning(f"l2: {l}")
        df = pd.DataFrame(l)
        df.sort_values(
            by=["key"],
            inplace=True,
            key=lambda x: np.argsort(natsort.index_natsorted(df["key"])),
        )
        if simplify:
            orig_df = df
            df = orig_df[["key", "id"]].copy()
            for t in [
                ("project", "key"),
                ("summary",),
                ("status", "name"),
                ("issuetype", "name"),
                ("lastViewed",),
                ("updated",),
            ]:
                cn = "_".join(t)
                df[cn] = orig_df["fields"]
                for x in t:
                    df[cn] = df[cn].apply(operator.itemgetter(x))
            cns = ["lastViewed", "updated"]
            df[cns] = df[cns].applymap(pd.to_datetime)
            my_logging.info(df.dtypes)

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
@moption("-i", "--issue-key", type=str, required=True)
@moption("-t", "--text", type=str, default="")
@moption("-f", "--text-file", type=click.Path(allow_dash=True))
@click.pass_context
def comment(ctx, issue_key, text, text_file):
    if text_file is not None:
        with click.open_file(text_file) as f:
            text = f.read().strip()
    my_logging.warning(f't: "{text}"')
    assert len(text) > 0

    if "\n" in text:
        text = "$'" + text.replace("\n", "\\n") + "'"
    else:
        text = f"'{text}'"

    run_cmd(
        make_cmd(
            "issue comment add",
            args=[issue_key, text],
            flags={"no-input": True},
            ctx_obj=ctx.obj,
            is_quote_args=False,
        )
    )


@issue.command(name="link")
@moption("-f", "--from", "from_", type=str, required=True)
@moption("-t", "--to", type=str, required=True)
@moption(
    "-l",
    "--issue-link-type",
    type=str,
    required=True,
    help="use `api link-type ls` to see available",
)
@click.pass_context
def link_(*args, **kwargs):
    return _real_link(*args, **kwargs)


def _real_link(ctx, from_, to, issue_link_type):
    my_logging.warning((from_, to, issue_link_type))
    run_cmd(make_cmd("issue link", args=[from_, to, issue_link_type], ctx_obj=ctx.obj))


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
        my_logging.warning(summaries)
        my_logging.warning("dry run")
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
# -s, --summary string            Edit summary or title
# -b, --body string               Edit description
# -y, --priority string           Edit priority
# -a, --assignee string           Edit assignee (email or display name)
# -l, --label stringArray         Append labels
# -C, --component stringArray     Replace components
#     --fix-version stringArray   Add/Append release info (fixVersions)
#     --custom stringToString     Edit custom fields (default [])
#     --web                       Open in web browser after successful update
#     --no-input                  Disable prompt for non-required fields
@moption("-s", "--summary", type=str)
@moption("-b", "--body", type=str)
@moption("-a", "--assignee", type=str)
@moption("-y", "--priority", type=str)
@moption("-i", "--issue-key", required=True)
@moption("-l", "--label", "labels", type=str, multiple=True)
# @moption("-c", "--custom", "labels", type=str)
@click.pass_context
def edit(ctx, issue_key, labels, **kwargs):
    run_cmd(
        make_cmd(
            "issue edit",
            args=[
                issue_key,
            ],
            flags={"no-input": True},
            kwargs=[
                *kwargs.items(),
                *[("label", label) for label in labels],
            ],
            ctx_obj=ctx.obj,
            is_quote_args=False,
        )
    )


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


@api.group()
@click.pass_context
def sprint(ctx):
    pass


@sprint.command(name="ls")
@click.pass_context
def ls_sprint(ctx):
    ctx


# board
# epic
# open
# project
# sprint

if __name__ == "__main__":
    fn = ".jira-cli.env"
    if path.isfile(fn):
        # my_logging.warning(f"loading `{fn}`")
        my_logging.add_post_config_message(("warning", f"loading `{fn}`"))
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
