#!/usr/bin/env python3
from argparse import ArgumentParser
import sys
import urllib.request
import json
import click
import logging
from tqdm import tqdm
from jinja2 import Template
from os.path import join, dirname


# global const's
_ROOT_URL = "https://api.trello.com/1"
_TEMPLATES_DIR = "./templates"
# global var's
# procedures


def _render_template(fn, **kwargs):
    _dir = dirname(__file__)
    with open(join(_dir, _TEMPLATES_DIR, fn)) as f:
        return Template(f.read()).render(kwargs)


# def getCard(cardid, fields=None):
#    "get card"
#    cardid = cardid
#    url = f"{_ROOT_URL}/cards/{cardid}?key={Trello['key']}&token={Trello['token']}"
#    if fields is not None:
#        url += f"&fields={fields}"
#    with urllib.request.urlopen(url) as url:
#        data = json.loads(url.read().decode())
#    return data
#
#
# def getChecklist(checklist_id):
#    url = f"{_ROOT_URL}/checklists/{checklist_id}?key={Trello['key']}&token={Trello['token']}"
#    with urllib.request.urlopen(url) as url:
#        data = json.loads(url.read().decode())
#    return data


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


@cli.group()
@click.pass_context
@click.option("-o", "--oformat", type=click.Choice(["json", "pretty"]), default="pretty")
def high(ctx, **kwargs):
    for k, v in kwargs.items():
        ctx.obj[k] = v


@high.command()
@click.argument("card_url", envvar="CARD_URL")
@click.pass_context
def print_card(ctx, card_url):
    _logger = logging.getLogger("high.print_card")
    _logger.info(f"card_url: {card_url}")
    cardid = card_url.split("/")[-1]  # FIXME: use regex's
    url = f"{_ROOT_URL}/cards/{cardid}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
    _logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())

    for i, checklist_id in tqdm(list(enumerate(data["idChecklists"]))):
        url = f"{_ROOT_URL}/checklists/{checklist_id}?&key={ctx.obj['trello_key']}&token={ctx.obj['trello_token']}"
        with urllib.request.urlopen(url) as url:
            _data = json.loads(url.read().decode())
        data["idChecklists"][i] = _data
        data["idChecklists"][i]["checkItems"] = sorted(
            data["idChecklists"][i]["checkItems"], key=lambda i: i["pos"])

    stats = {
        "total_count": sum([len(checklist_id["checkItems"])for checklist_id in data["idChecklists"]]),
        "done_count": sum([len([i for i in checklist_id["checkItems"] if i["state"] == "complete"]) for checklist_id in data["idChecklists"]]),
    }

    if ctx.obj["oformat"] == "json":
        print(json.dumps(data))
    elif ctx.obj["oformat"] == "pretty":
        print(_render_template("card.jinja.txt",
                               card=data, card_url=card_url, stats=stats))
    else:
        raise NotImplementedError


# @cli.command(name="gc", help="getCard")
# @click.argument("cardid")
# @click.option("--field", multiple=True)
# def _getCard(cardid, field):
#    kwargs = {}
#    if len(field) > 0:
#        kwargs["fields"] = field
#    res = getCard(cardid, **kwargs)
#    print(json.dumps(res))


# main
if __name__ == "__main__":
    cli()
