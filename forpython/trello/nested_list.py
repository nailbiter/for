#!/usr/bin/env python3
from trello import getCard, getChecklist
from collections import namedtuple
from functools import reduce
import click
import json
import pandas as pd
import logging
from re import split, match


#procedures
def _is_ignored_checklist_item(name):
    return name.startswith("_") or match("-+",name) is not None
nested_list_item = namedtuple("nested_list_item","name status nested_items")
def get_lists(cardid):
    """pretty print nested lists and print progress"""
    card = getCard(cardid=cardid)
    logging.info(f"card: {json.dumps(card,indent=2)}")
    checklists = card["idChecklists"]
    logging.info(f"checklists: {checklists}")
    return {checklist_data["name"]:[ci for ci in checklist_data["checkItems"]] for checklist_data in map(getChecklist,checklists)}

@click.command()
@click.argument("cardid")
def nested_list(cardid):
    for k,v in get_lists(cardid).items():
        #logging.warn(f"{k} => {v}")
        _v = sorted(v,key=lambda vv:vv["pos"])
        item_states = [vv["state"] for vv in _v if not _is_ignored_checklist_item(vv["name"])]
        stats = reduce(lambda d,i: {**d,i:d[i]+1}, item_states, dict(incomplete=0,complete=0))
        print(f"{k}: {stats['complete']}/{sum(stats.values())}={0 if not sum(stats.values()) else stats['complete']/sum(stats.values()):.2f}%")
        for vv in _v:
            if vv["name"].startswith("_") or match("-+",vv["name"]) is not None:
                continue
            print(f"\t{'o' if vv['state']=='incomplete' else 'v'} {vv['name']}")
#    lists = {tuple(split(r"\s*::\s*",k)):v for k,v in get_lists(cardid).items()}
#    res = {}
#    for pieces,v in lists.items():
#        for p in pieces:
#            pass
#    print(res)

#main
if __name__=="__main__":
    nested_list()
