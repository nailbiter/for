"""===============================================================================

        FILE: paradigm.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-02-09T11:08:05.585624
    REVISION: ---

==============================================================================="""
from flask import Flask, render_template, request
import pandas as pd
import io
import random
import itertools
import pymongo
import os
import logging
from datetime import datetime, timedelta
import _common

app = Flask(__name__)
_MAX_COMPLEXITY = 10


@app.route('/')
def hello_world():
    return render_template("list.jinja.html", paradigms=_common.get_paradigm_names())


@app.route("/test/<paradigm>")
@app.route("/test/<paradigm>/<int:complexity>")
def paradigm_test(paradigm, complexity=1):
    complexity = max(0, min(complexity, _MAX_COMPLEXITY))
    hide_prob = complexity/_MAX_COMPLEXITY

    dfs = _common.get_paradigm_dfs(paradigm)
    for k, df in enumerate(dfs):
        for i, j in itertools.product(range(len(df)), range(len(list(df)))):
            if random.uniform(0, 1) < hide_prob:
                df.iloc[i,
                        j] = f"""<input type="text" id="{k}_{i}_{j}" name="{k}_{i}_{j}" autocomplete="off">"""

    return render_template("paradigm.jinja.html", dfs=dfs, hide_prob=hide_prob, paradigm=paradigm, complexity=complexity)


@app.route("/grade/<paradigm>/<int:complexity>", methods=["POST"])
def grade(paradigm, complexity):
    dfs = _common.get_paradigm_dfs(paradigm)

    grade = {"total": len(request.form), "correct": 0}
    for kk, v in request.form.items():
        k, i, j = list(map(int, kk.split("_")))
        user_answer, correct_answer = v.strip(), dfs[k].iloc[i, j]
        if user_answer != correct_answer:
            dfs[k].iloc[i,
                        j] = f"<strike>{user_answer}</strike> <b>{correct_answer}</b>"
        else:
            grade["correct"] += 1

    mongo_kwargs = {} if ("MONGO_URL" not in os.environ) else {
        "host": os.environ["MONGO_URL"], "port": int(os.environ["MONGO_PORT"])}
    logging.warning(f"mongo_kwargs: {mongo_kwargs}")
    mongo_client = pymongo.MongoClient(**mongo_kwargs)
    mongo_coll = mongo_client["paradigm"]["scores"]
    mongo_coll.insert_one(
        {"grade": grade, "paradigm": paradigm, "complexity": complexity, "max_complexity": _MAX_COMPLEXITY, "timestamp": datetime.now()})

    recent_grades_df = pd.DataFrame(mongo_coll.find({"paradigm": paradigm, "complexity": complexity}, sort=[
        ("timestamp", pymongo.DESCENDING)], limit=10))
    streak = 0
    for r in recent_grades_df.to_dict(orient="records"):
        if r["grade"]["total"] == r["grade"]["correct"]:
            streak += 1
        else:
            break

    return render_template("grade.jinja.html", dfs=dfs, paradigm=paradigm, complexity=complexity, grade=grade, streak=streak)
