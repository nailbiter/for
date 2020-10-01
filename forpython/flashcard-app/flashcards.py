#!/usr/bin/env python3
"""
insert word: ./flashcards.py --tags japanese --tags reading add-item "運用" --back "practical use"
"""
import click
from pymongo import MongoClient
import pandas as pd
from random import choice
from re import match
import logging
from _flashcards.question import get_question_types, get_question
import json


@click.group()
@click.option("--tags", multiple=True, envvar="TAGS")
@click.option("--debug", is_flag=True)
@click.pass_context
def flashcards(ctx, tags, debug=False):
    if debug:
        logging.basicConfig(level=logging.INFO)
    coll = MongoClient().alex_flashcards.cards
    cards = list(coll.find())
    for tag in tags:
        cards = [card for card in cards if len(
            [_tag for _tag in card["tags"] if match(tag, _tag) is not None]) > 0]
    ctx.ensure_object(dict)
    ctx.obj["cards"] = cards
    ctx.obj["tags"] = tags
    ctx.obj["coll"] = coll


@flashcards.command()
@click.pass_context
def show(ctx):
    print(pd.DataFrame(ctx.obj["cards"]))


@flashcards.command()
@click.option("--deck_size", type=int, default=5, envvar="DECK_SIZE")
@click.option("--deck_index", type=int, default=-1, envvar="DECK_INDEX")
@click.option("--full/--no-full",default=False)
@click.pass_context
def show_deck(ctx, deck_index, deck_size, full):
    _logger = logging.getLogger("show_deck")
    cards = ctx.obj["cards"]
    _logger.info(f"{int(len(cards)/deck_size)+1} decks")
    assert deck_index >= 0

    deck = cards[deck_size*deck_index:deck_size*(deck_index+1)]
    deck = [{k: v for k, v in c.items() if k not in ["tags"]}
            for c in deck]
    assert(len(deck) > 0)
    _logger.info(f"deck:\n{pd.DataFrame(deck)}")
    deck_df = pd.DataFrame(deck)
    deck_df["_id"] = deck_df["_id"].apply(str)
    deck_df = deck_df.set_index("_id")

    results_df = pd.DataFrame(MongoClient().alex_flashcards.results.find())
    results_df = results_df.groupby("card").mean().reset_index()

    deck_df = deck_df.join(pd.DataFrame({k:v for k,v in results_df.items() if k in ["card","score"]}).set_index("card"),how="left")
    deck_df["score"] = deck_df["score"].apply(lambda x: 0.0 if pd.isna(x) else x)

    if not full:
        deck_df = pd.DataFrame({k:v for k,v in deck_df.reset_index().items() if k in ["_id","score"]})

    print(deck_df)


@flashcards.command()
@click.option("--deck_size", type=int, default=5, envvar="DECK_SIZE")
@click.option("--deck_index", type=int, default=-1, envvar="DECK_INDEX")
@click.pass_context
def test(ctx, deck_index, deck_size):
    _logger = logging.getLogger("test")
    cards = ctx.obj["cards"]
    _logger.info(f"{int(len(cards)/deck_size)+1} decks")
    assert deck_index >= 0

    deck = cards[deck_size*deck_index:deck_size*(deck_index+1)]
    deck = [{k: v for k, v in c.items() if k not in ["tags"]}
            for c in deck]
    assert(len(deck) > 0)
    _logger.info(f"deck:\n{pd.DataFrame(deck)}")
    question_i = 0
    while True:
        question_i += 1
        card = choice(deck)
        is_front_to_back = choice([True, False])
        back_index = choice(range(len(card["back"])))
        question_type = choice(get_question_types())
        question = get_question(
            question_type, card, deck, is_front_to_back, back_index)
        print(f"question #{question_i}: \n{question.get_question_text()}")
        res, msg = question.grade(input("answer> "))
        while res is None:
            res, msg = question.grade(input(f"answer({msg})> "))
        print(f"res: {res}")
        obj = json.loads(question.to_json())
        _logger.info(f"obj: {json.dumps(obj, indent=2, sort_keys=True)}")
        MongoClient().alex_flashcards.results.insert_one(obj)


@flashcards.command()
@click.argument("front")
@click.option("--back", multiple=True)
@click.pass_context
def add_item(ctx, **kwargs):
    coll = ctx.obj["coll"]
    obj = {"tags": ctx.obj["tags"], **kwargs}
    print(f"inserting {obj}")
    coll.insert_one(obj)


if __name__ == "__main__":
    flashcards()
