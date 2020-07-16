#!/usr/bin/env python3
from argparse import ArgumentParser
import sys
import urllib.request
import json 
from pymongo import MongoClient
import click


# global const's
ROOT_URL = "https://api.trello.com/1"
# global var's
Trello = dict()
# procedures

def getCard(cardid,fields=None):
    "get card"
    cardid = cardid
    url = f"{ROOT_URL}/cards/{cardid}?key={Trello['key']}&token={Trello['token']}"
    if fields is not None:
        url += f"&fields={fields}"
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    return data

def getChecklist(checklist_id):
    url = f"{ROOT_URL}/checklists/{checklist_id}?key={Trello['key']}&token={Trello['token']}"
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    return data

@click.group()
def cli():
    pass
@cli.command(name="gc",help="getCard")
@click.argument("cardid")
@click.option("--field", multiple=True)
def _getCard(cardid,field):
    kwargs = {}
    if len(field)>0:
        kwargs["fields"] = field
    res = getCard(cardid,**kwargs)
    print(json.dumps(res))


# main
client = MongoClient('localhost', 27017)
coll = client.admin.passwords
Trello["key"] = coll.find_one({"key":"TRELLOKEY"})["value"]
Trello["token"] = coll.find_one({"key":"TRELLOTOKEN"})["value"]
if __name__=="__main__":
    cli()
