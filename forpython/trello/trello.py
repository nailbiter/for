#!/usr/bin/env python3
from argparse import ArgumentParser
import sys
import urllib.request
import urllib.parse
import json
import click
import logging
from tqdm import tqdm
from jinja2 import Template
from os.path import join, dirname, split
from _trello import render_template, assistantbot_digest
from _trello.common import add_logger, TrelloUrl
from _trello.common import ROOT_URL as _ROOT_URL
import re
import requests
import functools
import pandas as pd
import webbrowser
import os
from os import path
from datetime import datetime, timedelta
from dotenv import load_dotenv


# global const's
_TRELLO_URL_REGEX = re.compile(r"https://trello.com/c/([0-9a-zA-Z]{8}).*")
# global var's
# procedures


@click.group()
@click.option("--trello_key", required=True, envvar="TRELLO_KEY")
@click.option("--trello_token", required=True, envvar="TRELLO_TOKEN")
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def cli(ctx, debug, **kwargs):
    if debug:
        logging.basicConfig(level=logging.DEBUG)
    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v
    ctx.obj["trello_url"] = TrelloUrl(
        **{f"trello_{k}": ctx.obj[f"trello_{k}"] for k in ["key", "token"]})


@cli.group()
@click.pass_context
def low(ctx):
    ctx.obj["logger"] = logging.getLogger("low")


@low.command()
@click.argument("id", envvar="CARD_URL")
@click.option("--closed", type=click.Choice(["true", "false"]))
@click.pass_context
def update_card(ctx, **kwargs):
    print(json.dumps(ctx.obj["trello_url"](
        "/cards/{{id}}?{%if closed%}closed={{closed}}{%endif%}", method_="PUT", **kwargs), sort_keys=True, indent=2))


@low.command()
@click.option("-c", "--card-id", envvar="CARD_URL", required=True)
@click.option("-l", "--label-id", required=True)
@click.pass_context
def remove_label_from_card(ctx, card_id, label_id):
    print(json.dumps(ctx.obj["trello_url"](
        "/cards/{{card_id}}/idLabels/{{label_id}}", method_="DELETE", card_id=card_id, label_id=label_id), sort_keys=True, indent=2))


@low.command()
@click.option("-c", "--card-id", envvar="CARD_URL", required=True)
@click.option("-l", "--label-id", required=True)
@click.pass_context
def add_label_to_card(ctx, card_id, label_id):
    print(json.dumps(ctx.obj["trello_url"](
        "/cards/{{card_id}}/idLabels?value={{label_id}}", method_="POST", card_id=card_id, label_id=label_id), sort_keys=True, indent=2))


@low.command()
@click.argument("user_id", envvar="TRELLO_USER_ID")
@click.pass_context
def get_boards_of_user(ctx, **kwargs):
    print(json.dumps(ctx.obj["trello_url"](
        "/members/{{user_id}}/boards", **kwargs), sort_keys=True, indent=2))


@low.command()
@click.argument("id", envvar="CARD_URL")
@click.pass_context
def get_card(ctx, **kwargs):
    print(json.dumps(ctx.obj["trello_url"](
        "/cards/{{id}}", **kwargs), sort_keys=True, indent=2))


@low.command()
@click.argument("id", envvar="CARD_URL")
@click.option("-f", "--filter", multiple=True, type=click.Choice(["createCard", "copyBoard", "copyCard"]))
@click.pass_context
def get_actions_on_card(ctx, **kwargs):
    print(json.dumps(ctx.obj["trello_url"](
        "/cards/{{id}}/actions{%if (filter|length)>0%}?filter={{filter|join(',')}}{%endif%}", **kwargs), sort_keys=True, indent=2))


@low.command()
@click.argument("board_id", envvar="TRELLO_BOARD_ID")
@click.pass_context
def get_lists_of_board(ctx, board_id):
    _logger = ctx.obj["logger"].getChild("get_lists_of_board")
    url = f"{_ROOT_URL}/boards/{board_id}/lists?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    print(json.dumps(data, sort_keys=True, indent=2))


@low.command()
@click.argument("list_id", envvar="TRELLO_LIST_ID")
@click.option("--include-assistantbot-hash/--no-include-assistantbot-hash", default=False)
@click.pass_context
def get_cards_of_list(ctx, list_id, include_assistantbot_hash):
    _logger = ctx.obj["logger"].getChild("get_cards_of_list")
    url = f"{_ROOT_URL}/lists/{list_id}/cards?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    if include_assistantbot_hash:
        data = [
            {**r, "assistantbot_hash": assistantbot_digest.id_to_digest(r["id"])} for r in data]
    print(json.dumps(data, sort_keys=True, indent=2))


@low.command()
@click.argument("board_id", envvar="TRELLO_BOARD_ID")
@click.pass_context
def get_labels_of_board(ctx, board_id):
    _logger = ctx.obj["logger"].getChild("get_labels_of_board")
    url = f"{_ROOT_URL}/boards/{board_id}/labels?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    print(json.dumps(data, sort_keys=True, indent=2))


@cli.group()
@click.option("--dry-run/--no-dry-run", default=False)
@click.pass_context
def high(ctx, **kwargs):
    for k, v in kwargs.items():
        ctx.obj[k] = v


def _fetch_checklists(data, auth):
    for i, checklist_id in tqdm(list(enumerate(data["idChecklists"]))):
        url = f"{_ROOT_URL}/checklists/{checklist_id}?&{auth}"
        with urllib.request.urlopen(url) as url:
            _data = json.loads(url.read().decode())
        data["idChecklists"][i] = _data
        data["idChecklists"][i]["checkItems"] = sorted(
            data["idChecklists"][i]["checkItems"], key=lambda i: i["pos"])
    data["idChecklists"] = sorted(data["idChecklists"], key=lambda i: i["pos"])


@high.command()
@click.argument("card_url", envvar="CARD_URL")
@click.argument("item")
@click.option("--mark-checked/--no-mark-checked", default=True)
@click.pass_context
@add_logger
def check_list_item(ctx, card_url, item, mark_checked, logger=None):
    m = re.match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _ctx_to_auth(ctx))

    item = re.match(r"(\d+).(\d+)", item)
    assert item is not None
    item = [int(item.group(i+1)) for i in range(2)]
    list_item = data["idChecklists"][item[0]]["checkItems"][item[1]]

    url = f"{_ROOT_URL}/cards/{cardid}/checkItem/{list_item['id']}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}&state={'complete' if mark_checked else 'incomplete'}"
    logger.info(f"url: {url}")

    response = requests.request(
        "PUT",
        url,
        #       headers=headers,
        #       params=query
    )
    print(response.text)


@high.command()
@click.option("--card-url", envvar="CARD_URL")
@click.option("-i", "--list-index", type=int, default=0)
@click.option("-t", "--item-text")
@click.pass_context
@add_logger
def add_list_item(ctx, card_url, list_index, item_text, logger=None):
    assert item_text is not None
    m = re.match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _ctx_to_auth(ctx))

    checklist_id = data["idChecklists"][list_index]["id"]

    url = f"{_ROOT_URL}/checklists/{checklist_id}/checkItems?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}&name={item_text}"
    logger.info(f"url: {url}")

    response = requests.request(
        "POST",
        url,
        #       headers=headers,
        #       params=query
    )
    print(response.text)


@high.command()
@click.option("--card-url", envvar="CARD_URL")
@click.option("-i", "--list-index", type=int)
@click.pass_context
@add_logger
def rm_list_item(ctx, card_url, list_index, logger=None):
    m = re.match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _ctx_to_auth(ctx))

    checklist_id = data["idChecklists"][list_index]["id"]

    url = f"{_ROOT_URL}/checklists/{checklist_id}?key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    logger.info(f"url: {url}")

    response = requests.request(
        "DELETE",
        url,
    )
    print(response.text)


@functools.lru_cache(None)
def _fetchCardName(cardid, trello_key, trello_token):
    url = f"{_ROOT_URL}/cards/{cardid}?&key={trello_key}&token={trello_token}"
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    return data["name"]


@high.command()
@click.option("-c", "--card-url", envvar="CARD_URL", required=True)
@click.option("-o", "--oformat", type=click.Choice(["json", "github", "tech"]), default="github")
@click.option("-f", "--free-text")
@click.pass_context
def print_card(ctx, card_url, oformat, free_text):
    _logger = logging.getLogger("high.print_card")
    _logger.info(f"card_url: {card_url}")

    # https://trello.com/c/S95tjc5b/5582-%E4%BA%A4%E9%80%9A%E9%87%8F%E5%85%A8%E6%95%B0%E6%8E%A8%E5%AE%9A
    m = re.match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _ctx_to_auth(ctx))
    for i, checklist in enumerate(data["idChecklists"]):
        for j, check_item in enumerate(checklist["checkItems"]):
            m = _TRELLO_URL_REGEX.match(check_item["name"])
            if m is not None:
                card_name = _fetchCardName(
                    m.group(1), ctx.obj["trello_key"], ctx.obj["trello_token"])
                check_item["name"] = f"[{card_name}]({check_item['name']})"

    stats = {
        "total_count": sum([len(checklist_id["checkItems"])for checklist_id in data["idChecklists"]]),
        "done_count": sum([len([i for i in checklist_id["checkItems"] if i["state"] == "complete"]) for checklist_id in data["idChecklists"]]),
    }

    #oformat = ctx.obj["oformat"]
    if oformat == "json":
        print(json.dumps(data))
    elif oformat == "tech":
        print(render_template("card_pretty.jinja.txt",
                              card=data, card_url=card_url, stats=stats))
    elif oformat == "github":
        print(render_template("card.jinja.txt",
                              card=data, card_url=card_url, stats=stats, free_text=free_text))
    else:
        raise NotImplementedError


def _ctx_to_auth(ctx):
    return f"key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"


@high.command()
@click.option("-c", "--card-url", envvar="CARD_URL", required=True)
@click.argument("item")
@click.option("-t", "--to", type=click.Choice(["card", "list"]), default="card")
@click.option("--open-url/--no-open-url", default=False)
@click.option("--web-browser", envvar="WEBBROWSER")
@click.pass_context
def list_item_to(ctx, card_url, item, to, open_url, web_browser):
    _logger = logging.getLogger("high.list_item_to")
    _logger.info(f"card_url: {card_url}")

    # https://trello.com/c/S95tjc5b/5582-%E4%BA%A4%E9%80%9A%E9%87%8F%E5%85%A8%E6%95%B0%E6%8E%A8%E5%AE%9A
    m = re.match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    _auth = _ctx_to_auth(ctx)
    url = f"{_ROOT_URL}/cards/{cardid}?&{_auth}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    # FIXME: no need to fetch all checklists
    _fetch_checklists(data, _auth)

    m = re.match(r"(\d+).(\d+)", item)
    assert m is not None
    i, j = (int(m.group(_i+1)) for _i in range(2))
    item = data["idChecklists"][i]["checkItems"][j]
    if to == "card":
        _logger.info(f"item: {item}")
        trello_url = ctx.obj["trello_url"]
        _rbp = trello_url("cards?idList={{data.idList}}&name={{name}}",
                          method_="POST", data=data, name=urllib.parse.quote(item['name']))
        # archive on creation
        trello_url("cards/{{id_}}?closed=true", method_="PUT", id_=_rbp["id"])
        # replace list item with newly-created card
        trello_url(
            "checklists/{{item.idChecklist}}/checkItems/{{item.id}}", method_="DELETE", item=item)
        trello_url("checklists/{{item.idChecklist}}/checkItems?name={{url}}&pos={{item.pos}}",
                   method_="POST", item=item, url=urllib.parse.quote(_rbp["shortUrl"]))
        _url = _rbp["shortUrl"]
        click.echo(_url)
        if open_url:
            webbrowser.get(web_browser).open(_url)
    elif to == "list":
        _logger.info(f"item: {item}")
        name = " :: ".join([data["idChecklists"][i]["name"], item['name']])
        _url = f"{_ROOT_URL}/cards/{cardid}/checklists?{_auth}&name={urllib.parse.quote(name)}"
        _logger.info(f"_url: {_url}")
        request = urllib.request.Request(_url, method="POST")
        with urllib.request.urlopen(request) as response:
            response_body = response.read().decode("utf-8")
        _logger.info(f"response_body: {response_body}")
    else:
        raise NotImplementedError


@high.command()
@click.pass_context
@click.option("-n", "--name", required=True)
@click.option("--list-id", required=True, envvar="TASK_LIST_ID")
@click.option("--create-archived/--no-create-archived", default=False)
@click.option("-l", "--label", multiple=True)
@click.option("--open-url/--no-open-url", default=False)
@click.option("--pos")
@click.option("--web-browser", envvar="WEBBROWSER")
def create_card(ctx, name, list_id, create_archived, label, open_url, web_browser, pos):
    trello_url = ctx.obj["trello_url"]
    # create card
    _rbp = trello_url("cards?idList={{list_id}}&name={{name}}{%if pos%}&pos={{pos}}{%endif%}",
                      method_="POST", name=urllib.parse.quote(name), list_id=list_id, pos=pos)
    # archive
    if create_archived:
        trello_url("cards/{{id_}}?closed=true", method_="PUT", id_=_rbp["id"])
    # add label
    for l in label:
        trello_url("cards/{{id_}}/idLabels?value={{l}}",
                   method_="POST", id_=_rbp["id"], l=l)
    # print url
    url = _rbp["shortUrl"]
    click.echo(url)
    if open_url:
        webbrowser.get(web_browser).open(url)


@high.command()
@click.option("-t", "--template-name")
@click.option("--template-folder", default="card_descriptions", type=click.Path(file_okay=False))
@click.option("--open-url/--no-open-url", default=False)
@click.option("--web-browser", envvar="WEBBROWSER")
@click.option("-d", "--day", type=click.DateTime(["%Y-%m-%d"]))
@click.pass_context
@add_logger
def create_card_from_description(ctx, template_name, template_folder, open_url, web_browser, day, logger=None):
    template_values = {}
    for fn in os.listdir(template_folder):
        base, ext = path.splitext(fn)
        if ext == ".json":
            template_values[base] = path.join(template_folder, fn)
    if template_name is None:
        template_name = sorted(template_values.keys())[0]
    else:
        assert template_name in template_values, template_name
    template_name = template_values[template_name]
    logger.info(template_name)
    with open(template_name) as f:
        data = json.load(f)
    now_ = day if day is not None else datetime.now()
    env = {
        "now": now_,
        "timedelta": timedelta
    }
    trello_url = TrelloUrl(
        **{k: ctx.obj[k] for k in "trello_key,trello_token".split(",")})
    data["name"] = urllib.parse.quote(Template(data["name"]).render(env))
    kwargs = {k: data[k] for k in "idList,name".split(",")}
    if "pos" in data:
        if isinstance(data["pos"], int):
            kwargs["pos"] = data["pos"]
        else:
            if data["pos"]["type"] == "immediately_after":
                tasks = assistantbot_digest.get_tasks(
                    data["idList"], *[ctx.obj[k] for k in "trello_key,trello_token".split(",")])
                tasks["next_pos"] = tasks.pos.shift(-1)
                tasks = tasks.query(f"id=='{data['pos']['value']}'")
                assert len(tasks) == 1
                tasks = tasks.to_dict(orient="records")[0]
                if not pd.isna(tasks["next_pos"]):
                    kwargs["pos"] = (tasks["pos"]+tasks["next_pos"])/2
            else:
                raise NotImplementedError(data["pos"])

    res = trello_url(
        "cards?name={{name}}&idList={{idList}}{%if pos%}&pos={{pos}}{%endif%}", method_="POST", **kwargs)
    logging.info(f"res: {res}")
    id_, url = [res[k] for k in "id,url".split(",")]
    for l in data["labels"]:
        trello_url("cards/{{id_}}/idLabels?value={{l}}",
                   method_="POST", id_=id_, l=l)
    if "checklist" in data:
        res = trello_url("checklists?idCard={{id_}}&name={{name}}", method_="POST",
                         id_=id_, name=urllib.parse.quote(data["checklist"]["name"]))
        logging.info(f"res: {res}")
        for checkitem in data["checklist"]["checkitems"]:
            if isinstance(checkitem, str):
                checkitem = {"name": checkitem}
            if "condition" in checkitem:
                condition = checkitem["condition"]
                if condition["type"] == "weekday":
                    condition_holds = now_.weekday() == condition["value"]
                else:
                    raise NotImplementedError(condition)
                if not condition_holds:
                    continue
            trello_url("checklists/{{id_}}/checkItems?name={{name}}", method_="POST",
                       id_=res["id"], name=urllib.parse.quote(checkitem["name"]))

    if open_url:
        webbrowser.get(web_browser).open(url)


@cli.group()
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--tasklist-id", required=True, envvar="TASK_LIST_ID")
@click.pass_context
def assistantbot(ctx, **kwargs):
    for k, v in kwargs.items():
        ctx.obj[k] = v


@assistantbot.command()
@click.pass_context
def tasks(ctx):
    list_id = ctx.obj["tasklist_id"]
    df = assistantbot_digest.get_tasks(
        list_id, *[ctx.obj[k] for k in "trello_key,trello_token".split(",")])
    print(df)


@assistantbot.command()
@click.argument("task_hash", nargs=-1)
@click.option("--web-browser", envvar="WEBBROWSER")
@click.option("--open-url/--no-open-url", default=True)
@click.pass_context
@add_logger
def open_task(ctx, task_hash, web_browser, open_url, logger=None):
    list_id = ctx.obj["tasklist_id"]
    df = assistantbot_digest.get_tasks(
        list_id, *[ctx.obj[k] for k in "trello_key,trello_token".split(",")])
    for th in task_hash:
        _slice = df.query(f"hash=='{th}'")
        assert len(_slice) == 1
        url = _slice.url.iloc[0]
        if open_url:
            webbrowser.get(web_browser).open(url)
    else:
        click.echo(url)


@assistantbot.command()
@click.argument("task_hash")
@click.pass_context
@add_logger
def archive_task(ctx, task_hash, logger=None):
    list_id = ctx.obj["tasklist_id"]
    df = assistantbot_digest.get_tasks(
        list_id, *[ctx.obj[k] for k in "trello_key,trello_token".split(",")])
    df = df.query(f"hash=='{task_hash}'")
    assert len(df) == 1
    id_ = list(df["id"])[0]

    url = f"{_ROOT_URL}/cards/{id_}?key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}&closed=true"
    logger.info(f"url: {url}")
    response = requests.request("PUT", url)
    print(response.text)


@assistantbot.command()
@click.argument("task_hash")
@click.argument("urls", nargs=-1)
@click.pass_context
@add_logger
def add_url_link(ctx, task_hash, urls, logger=None):
    list_id = ctx.obj["tasklist_id"]
    tasks_df = assistantbot_digest.get_tasks(
        list_id, *[ctx.obj[k] for k in "trello_key,trello_token".split(",")])
    for url in urls:
        if assistantbot_digest.is_digest(url):
            df = tasks_df.query(f"hash=='{url}'").copy()
            assert len(df) == 1
            url = list(df.url)[0]
        assert url.startswith(
            "http://") or url.startswith("https://"), f"bad url: \"{url}\""

        if assistantbot_digest.is_digest(task_hash):
            df = tasks_df.query(f"hash=='{task_hash}'").copy()
            assert len(df) == 1, df
            id_ = list(df["id"])[0]
        else:
            m = re.match(r"https://trello.com/c/([a-zA-Z0-9]+)/?", task_hash)
            assert m is not None
            id_ = m.group(1)

        url = f"{_ROOT_URL}/cards/{id_}/attachments?key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}&url={urllib.parse.quote(url)}"
        logger.info(f"url: {url}")

        response = requests.request(
            "POST",
            url,
            #       headers=headers,
            #       params=query
        )
        print(response.text)


# main
# print("here")
if path.isfile(".env"):
    #    print("load_dotenv")
    load_dotenv(override=True)
#    print(os.environ)
if __name__ == "__main__":
    cli()
