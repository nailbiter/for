#!/usr/bin/env python3
import click
from pymongo import MongoClient
import pandas as pd
from random import choice

@click.command()
@click.option("--tags",multiple=True)
@click.option("--deck_size",type=int,default=5)
@click.option("--deck_index",type=int,default=-1)
def flashcards(tags,deck_size,deck_index):
    cards = list(MongoClient().alex_flashcards.cards.find())
    for tag in tags:
        cards = [card for card in cards if tag in card["tags"]]
    print(f"{int(len(cards)/deck_size)+1} decks")    
    if deck_index>=0:
        deck = cards[deck_size*deck_index:deck_size*(deck_index+1)]
        deck = [{k:v for k,v in c.items() if k not in ["_id","tags"]} for c in deck]
        print(pd.DataFrame(deck))
        while True:
            random_card = chaice(deck)
            is_test_front = choice([True,False])
            if is_test_front:
                question

if __name__=="__main__":
    flashcards()
