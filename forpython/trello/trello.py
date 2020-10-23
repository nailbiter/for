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
from os.path import join, dirname
from re import match


# global const's
_ROOT_URL = "https://api.trello.com/1"
_TEMPLATES_DIR = "./templates"
# global var's
# procedures


def _render_template(fn, **kwargs):
    _dir = dirname(__file__)
    with open(join(_dir, _TEMPLATES_DIR, fn)) as f:
        return Template(f.read()).render(kwargs)


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

class TrelloUrl:
    _ROOT_URL = "https://api.trello.com/1"
    def __init__(self, trello_key, trello_token):
        self._trello_key = trello_key
        self._trello_token = trello_token
        self._logger = logging.getLogger("TrelloUrl")
    def __call__(self,tpl,**kwargs):
        url = Template(tpl).render(kwargs)
        if "?" not in url:
            url = f"{url}?"
        url = f"{TrelloUrl._ROOT_URL}/{url}&token={self._trello_token}&key={self._trello_key}"
        self._logger.info(f"url: {url}")
        with urllib.request.urlopen(url) as url:
            data = json.loads(url.read().decode())
        return data    

@cli.group()
@click.pass_context
def low(ctx):
    ctx.obj["logger"] = logging.getLogger("low")
    ctx.obj["trello_url"] = TrelloUrl(**{f"trello_{k}":ctx.obj[f"trello_{k}"] for k in ["key","token"]})


@low.command()
@click.argument("user_id", envvar="TRELLO_USER_ID")
@click.pass_context
def get_boards_of_user(ctx, **kwargs):
    print(json.dumps(ctx.obj["trello_url"]("/members/{{user_id}}/boards",**kwargs), sort_keys=True, indent=2))


@low.command()
@click.argument("board_id", envvar="TRELLO_BOARD_ID")
@click.pass_context
def get_lists_of_board(ctx,board_id):
    _logger = ctx.obj["logger"].getChild("get_lists_of_board")
    url = f"{_ROOT_URL}/boards/{board_id}/lists?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    print(json.dumps(data, sort_keys=True, indent=2))

@low.command()
@click.argument("list_id", envvar="TRELLO_LIST_ID")
@click.pass_context
def get_cards_of_list(ctx,list_id):
    _logger = ctx.obj["logger"].getChild("get_cards_of_list")
    url = f"{_ROOT_URL}/lists/{list_id}/cards?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
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
@click.option("-o", "--oformat", type=click.Choice(["json", "github", "tech"]), default="github")
@click.pass_context
def print_card(ctx, card_url, oformat):
    _logger = logging.getLogger("high.print_card")
    _logger.info(f"card_url: {card_url}")

    # https://trello.com/c/S95tjc5b/5582-%E4%BA%A4%E9%80%9A%E9%87%8F%E5%85%A8%E6%95%B0%E6%8E%A8%E5%AE%9A
    m = match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _ctx_to_auth(ctx))

    stats = {
        "total_count": sum([len(checklist_id["checkItems"])for checklist_id in data["idChecklists"]]),
        "done_count": sum([len([i for i in checklist_id["checkItems"] if i["state"] == "complete"]) for checklist_id in data["idChecklists"]]),
    }

    #oformat = ctx.obj["oformat"]
    if oformat == "json":
        print(json.dumps(data))
    elif oformat == "tech":
        print(_render_template("card_pretty.jinja.txt",
                               card=data, card_url=card_url, stats=stats))
    elif oformat == "github":
        print(_render_template("card.jinja.txt",
                               card=data, card_url=card_url, stats=stats))
    else:
        raise NotImplementedError


def _ctx_to_auth(ctx):
    return f"key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"


@high.command()
@click.argument("card_url", envvar="CARD_URL")
@click.argument("item")
@click.option("-t", "--to", type=click.Choice(["card", "list"]), default="card")
@click.pass_context
def list_item_to(ctx, card_url, item, to):
    _logger = logging.getLogger("high.list_item_to")
    _logger.info(f"card_url: {card_url}")

    # https://trello.com/c/S95tjc5b/5582-%E4%BA%A4%E9%80%9A%E9%87%8F%E5%85%A8%E6%95%B0%E6%8E%A8%E5%AE%9A
    m = match(r"https://trello.com/c/([0-9a-zA-Z]{8}).*", card_url)
    assert m is not None
    cardid = m.group(1)
    card_url = f"https://trello.com/c/{cardid}"

    _auth = _ctx_to_auth(ctx)
    url = f"{_ROOT_URL}/cards/{cardid}?&{_auth}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    _fetch_checklists(data, _auth)

    m = match(r"(\d+).(\d+)", item)
    assert m is not None
    i, j = (int(m.group(_i+1)) for _i in range(2))
    item = data["idChecklists"][i]["checkItems"][j]
    if to == "card":
        _logger.info(f"item: {item}")
        _url = f"{_ROOT_URL}/cards?{_auth}&idList={data['idList']}&name={urllib.parse.quote(item['name'])}"
        _logger.info(f"_url: {_url}")
        request = urllib.request.Request(_url, method="POST")
        with urllib.request.urlopen(request) as response:
            response_body = response.read().decode("utf-8")
        _logger.info(f"response_body: {response_body}")
        _rbp = json.loads(response_body)
        print(_rbp["shortUrl"])
        # FIXME: archive on creation
        # FIXME: replace list item with newly-created card
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


# main
if __name__ == "__main__":
    cli()
