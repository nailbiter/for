#!/usr/bin/env python3
from argparse import ArgumentParser
import sys
import urllib.request
import json 
from pymongo import MongoClient
import pprint
from jinja2 import Template


# global const's
ROOT_URL = "https://api.trello.com/1"
# global var's
Trello = dict()
# procedures


def getCard(args):
    "get card"
    cardid = args.cardid
    url = f"{ROOT_URL}/cards/{cardid}?key={Trello['key']}&token={Trello['token']}"
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    return data    


# main
client = MongoClient('localhost', 27017)
coll = client.admin.passwords
Trello["key"] = coll.find_one({"key":"TRELLOKEY"})["value"]
Trello["token"] = coll.find_one({"key":"TRELLOTOKEN"})["value"]

commands = {
    "gc": getCard
}
parser = ArgumentParser()
parser.add_argument("--format", help="output format",
                    choices=["json", "text"], default="json")
subparsers = parser.add_subparsers(help="sub-commands help:")

subparser = subparsers.add_parser(
    "gc", help=commands["gc"].__doc__)
subparser.set_defaults(func=commands["gc"])
subparser.add_argument("cardid")

args = parser.parse_args(sys.argv[1:])
if(hasattr(args, "func")):
    res = args.func(args)
    print(json.dumps(res))
else:
    parser.print_help()
