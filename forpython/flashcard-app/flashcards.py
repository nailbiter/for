#!/usr/bin/env python3
"""===============================================================================

        FILE: flashcards.py

       USAGE: ./flashcards.py test
              insert word: ./flashcards.py --tags japanese --tags reading add-item "運用" --back "practical use"

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: 0.0.1
     CREATED: 2020-09-24 11:19 +0900
    REVISION: ---
        TODO:
              1. type-in question type
              2. 

==============================================================================="""
import click
from pymongo import MongoClient
import pandas as pd
from random import choice, choices
from re import match
import logging
from _flashcards.question import get_question_types, get_question
import json


def _get_deck_with_score(deck):
    deck_df = pd.DataFrame(deck)
    deck_df["_id"] = deck_df["_id"].apply(str)
    deck_df = deck_df.set_index("_id")

    results_df = pd.DataFrame(MongoClient().alex_flashcards.results.find())
    results_df = results_df.groupby("card").mean().reset_index()

    deck_df = deck_df.join(pd.DataFrame({k: v for k, v in results_df.items() if k in [
                           "card", "score"]}).set_index("card"), how="left")
    deck_df["score"] = deck_df["score"].apply(
        lambda x: 0.0 if pd.isna(x) else x)
    return deck_df


def _get_random_question(deck):
    _logger = logging.getLogger("_get_random_question")
    deck_df = _get_deck_with_score(deck).reset_index()
    records = deck_df.to_dict(orient="records")
    card = choices(records, weights=[1.1-r["score"] for r in records],  k=1)[0]
    _logger.info(f"card: {card}")
    card = next(_card for _card in deck if str(_card["_id"]) == card["_id"])
    is_front_to_back = choice([True, False])
    back_index = choice(range(len(card["back"])))
    question_type = choice(get_question_types())
    return {
        "deck": deck,
        "card": card,
        "is_front_to_back": is_front_to_back,
        "back_index": back_index,
        "question_type": question_type
    }


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
@click.option("--full/--no-full", default=False)
@click.option("--sort/--no-sort", default=False)
@click.pass_context
def show_deck(ctx, deck_index, deck_size, full, sort):
    _logger = logging.getLogger("show_deck")
    cards = ctx.obj["cards"]
    _logger.info(f"{int(len(cards)/deck_size)+1} decks")
    assert deck_index >= 0

    deck = cards[deck_size*deck_index:deck_size*(deck_index+1)]
    deck = [{k: v for k, v in c.items() if k not in ["tags"]}
            for c in deck]
    assert(len(deck) > 0)
    _logger.info(f"deck:\n{pd.DataFrame(deck)}")

    deck_df = _get_deck_with_score(deck)

    if not full:
        deck_df = pd.DataFrame(
            {k: v for k, v in deck_df.reset_index().items() if k in ["_id", "score"]})
    if sort:
        deck_df = deck_df.sort_values(by="score",ascending=False)

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
        _d = _get_random_question(deck)
        question = get_question(
            _d["question_type"], **{k: v for k, v in _d.items() if k != "question_type"})
        print(f"question #{question_i}: \n{question.get_question_text()}")
        while True:
            res, msg = question.grade(input("answer> "))
            if msg is not None:
                print(f"({msg})")
            if res is not None:
                break
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
