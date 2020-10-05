"""===============================================================================

        FILE: flashcards_server.py

       USAGE: ./flashcards_server.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: 0.0.1
     CREATED: 2020-10-05T15:28:00.019712
    REVISION: ---
    
TODO:
    0. remove all FIXMEs
    1. click in selection questions, not type
    3. rewrite into bot (maybe, integrate into `flashcards.py`)

==============================================================================="""
from flask import Flask, render_template, request
from os import environ
app = Flask(__name__)
import logging
from pymongo import MongoClient
from re import match
import pandas as pd
from _flashcards import get_random_question, get_cards
import logging
from _flashcards.question import get_question_types, get_question
import pickle
import json

_QUESTION_PICKLE_FILENAME = ".question.pickle"

@app.route('/')
def test():
    deck_size, deck_index, tags = (environ[k] for k in ["DECK_SIZE","DECK_INDEX","TAGS"])
    tags = [tags]
    deck_size,deck_index = (int(s) for s in [deck_size,deck_index])
    _logger = logging.getLogger("test")

    cards = get_cards(tags)

    _logger.info(f"{int(len(cards)/deck_size)+1} decks")
    assert deck_index >= 0

    deck = cards[deck_size*deck_index:deck_size*(deck_index+1)]
    deck = [{k: v for k, v in c.items() if k not in ["tags"]}
            for c in deck]
    assert(len(deck) > 0)
    _logger.info(f"deck:\n{pd.DataFrame(deck)}")

    question_i = 0 #FIXME
    question_i += 1
    _d = get_random_question(deck)
    question = get_question(
        _d["question_type"], **{k: v for k, v in _d.items() if k != "question_type"})

    with open(_QUESTION_PICKLE_FILENAME,"wb") as f:
        pickle.dump(question,f)
    return render_template("test.jinja.html",question_text=question.get_question_text(),question_i=question_i)

@app.route("/check_answer",methods=["POST"])
def check_answer():
    _logger = logging.getLogger("check_answer")
    x = dict(request.form)
    with open(_QUESTION_PICKLE_FILENAME,"rb") as f:
        question = pickle.load(f)
    res, msg = question.grade(x["answer"])

    #FIXME: implement this
#    if msg is not None:
#        print(f"({msg})")
#    if res is not None:
#        break

#    click.echo(click.style(f"res: {res}",
#                           fg="green" if res == 1.0 else "red"))
    #FIXME: output deck score
    
    if res is not None:
        obj = json.loads(question.to_json())
        _logger.info(f"obj: {json.dumps(obj, indent=2, sort_keys=True)}")
        MongoClient().alex_flashcards.results.insert_one(obj)
    return render_template("check_answer.jinja.html", res=res, msg=msg)
