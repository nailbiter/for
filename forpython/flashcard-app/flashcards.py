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
    3. `--(no)-hint` key for test``
    8(done). colored output
    9. different score strategies
    10. different selection strategies

==============================================================================="""
import click
from pymongo import MongoClient
import pandas as pd
from random import choice, choices
from re import match
from itertools import product
import logging
from _flashcards.question import get_question_types, get_question
import json
from math import ceil
from os.path import splitext


_GROUPBY = ["_id", "is_front_to_back", "back_index"]


def _get_deck_with_score(deck):
    _logger = logging.getLogger("_get_deck_with_score")

    deck_df = pd.DataFrame(deck)
    deck_df["_id"] = deck_df["_id"].apply(str)
    deck_df = pd.concat([
        pd.DataFrame([{**r, "back_index": back_index, "is_front_to_back": is_front_to_back}
                      for back_index, is_front_to_back in product(range(len(r["back"])), [True, False])])
        for r
        in deck_df.to_dict(orient="records")
    ]).set_index(_GROUPBY)

    results_df = pd.DataFrame(MongoClient().alex_flashcards.results.find())
    results_df["_id"] = results_df["card"]
    results_df.drop(columns=["card"])
    results_df = results_df.groupby(_GROUPBY).mean()
    _logger.info(f"results_df: {results_df}")

    deck_df = deck_df.join(results_df, how="left")
    deck_df["score"] = deck_df["score"].apply(
        lambda x: 0.0 if pd.isna(x) else x)
    _logger.info(f"deck_df: {deck_df}")
    return deck_df


def _get_random_question(deck):
    _logger = logging.getLogger("_get_random_question")
    deck_df = _get_deck_with_score(deck).reset_index()
    records = deck_df.to_dict(orient="records")
    max_weight = 1.0 if min(map(lambda r:r["score"],records))<1.0 else 2.0
    record = choices(records, weights=[max_weight-r["score"]
                                       for r in records],  k=1)[0]
    card = next(card for card in deck if str(card["_id"]) == record["_id"])
    is_front_to_back = record["is_front_to_back"]
    back_index = record["back_index"]

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
@click.option("--deck_size", type=int, default=5, envvar="DECK_SIZE")
@click.option("--deck_index", type=int, default=-1, envvar="DECK_INDEX")
@click.option("--full/--no-full", default=False)
@click.option("--sort/--no-sort", default=False)
@click.option("--agg", type=click.Choice([*_GROUPBY, "none"]), multiple=True)
@click.pass_context
def show_score(ctx, deck_index, deck_size, full, sort, agg):
    _logger = logging.getLogger("show_score")
    cards = ctx.obj["cards"]
    deck_count = ceil(len(cards)/deck_size)
    _logger.info(f"{deck_count} decks")
    assert deck_index >= -1
    if agg == ("none",):
        agg = []
    elif agg == ():
        agg = _GROUPBY

    deck = []
    for _deck_index in range(deck_count):
        deck.extend([{**card, "deck_index": _deck_index}
                     for card in cards[deck_size*_deck_index:(_deck_index+1)*deck_size]])
    # _logger.info(f"deck: {deck}")
    if deck_index >= 0:
        deck = [card for card in deck if card["deck_index"] == deck_index]
    assert(len(deck) > 0)
    deck = [{k: v for k, v in c.items() if k not in ["tags"]}
            for c in deck]
    _logger.info(f"deck:\n{pd.DataFrame(deck)}")

    deck_df = _get_deck_with_score(deck)

    if True:
        deck_df = deck_df.reset_index()
        _all = {"deck_index", *_GROUPBY}
        _agg = list({"deck_index", *agg, })

        def _aggregator(x):
            idx, df = x
            __logger = _logger.getChild("_aggregator")
            return pd.DataFrame([{
                **{k: v for k, v in zip(_agg, idx if len(_agg) > 1 else [idx])},
                **{k: v.mean() if k == "score" else choice(list(v)) for k, v in df.items() if k not in _all},
            }])

        deck_df = pd.concat(map(_aggregator, deck_df.groupby(
            _agg, as_index=False))).reset_index().drop(columns=["index"]).set_index(_agg)

    if not full:
        deck_df = deck_df.drop(columns=["back", "front"])
    else:
        index_names = deck_df.index.names
        deck_df = deck_df.reset_index()
        for i in range(deck_df["back"].apply(len).max()):
            deck_df[f"back[{i}]"] = deck_df["back"].apply(
                lambda back: None if len(back) <= i else back[i])
        deck_df = deck_df.drop(columns=["back"]).set_index(index_names)

    if sort:
        deck_df = deck_df.sort_values(by="score", ascending=False)

    # deck_df = deck_df.drop_duplicates()
    COL_SPACE = 10
    print(deck_df.to_string(justify="left", col_space=COL_SPACE))
    print(f"average score: {deck_df['score'].mean()*100:05.2f}%")


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
        click.echo(click.style(f"res: {res}",fg="green" if res==1.0 else "red"))
        obj = json.loads(question.to_json())
        _logger.info(f"obj: {json.dumps(obj, indent=2, sort_keys=True)}")
        MongoClient().alex_flashcards.results.insert_one(obj)


@flashcards.command()
@click.pass_context
def show_cards(ctx):
    """
    deprecated: FIXME 3c043fd172238823
    integrate in `show_cards` (make --deck_index flag optional: remove assertion and change handling for -1 value)
    """
    # @click.option("--deck_size", type=int, envvar="DECK_SIZE")
    #print(f"deck_size: {deck_size}")
    print(pd.DataFrame(ctx.obj["cards"]))


@flashcards.command()
@click.argument("front")
@click.option("--back", multiple=True)
@click.pass_context
def add_item(ctx, **kwargs):
    coll = ctx.obj["coll"]
    obj = {"tags": ctx.obj["tags"], **kwargs}
    print(f"inserting {obj}")
    coll.insert_one(obj)


@flashcards.command()
@click.argument("filename", type=click.Path())
@click.pass_context
def add_batch(ctx, filename):
    assert splitext(filename)[1] == ".csv", "filename should be a `.csv` file"
    batch = pd.read_csv(filename, sep="\t", header=None)
    coll = ctx.obj["coll"]
    back_size = len(list(batch))-1
    batch = pd.DataFrame({"front": batch[0], "back": map(lambda t: [
                         x for x in t if not pd.isna(x)], zip(*[batch[i+1] for i in range(back_size)])) })
    coll.insert_many([{"tags": ctx.obj["tags"], **r} for r in batch.to_dict(orient="records")])


if __name__ == "__main__":
    flashcards()
