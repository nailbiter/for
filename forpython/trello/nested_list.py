#!/usr/bin/env python3
from trello import getCard, getChecklist
from collections import namedtuple
import click
import json
import pandas as pd
from re import split


#procedures
nested_list_item = namedtuple("nested_list_item","name status nested_items")
def get_lists(cardid):
    card = getCard(cardid=cardid)
    print(f"card: {json.dumps(card,indent=2)}")
    checklists = card["idChecklists"]
    print(f"checklists: {checklists}")
    return {checklist_data["name"]:[dict(name=ci["name"],state=ci["state"]) for ci in checklist_data["checkItems"]] for checklist_data in map(getChecklist,checklists)}

@click.command()
@click.argument("cardid")
def nested_list(cardid):
    lists = {tuple(split(r"\s*::\s*",k)):v for k,v in get_lists(cardid).items()}
    res = {}
    for pieces,v in lists.items():
        for p in pieces:
            pass
    print(res)

#main
if __name__=="__main__":
    nested_list()
