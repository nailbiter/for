#!/usr/bin/env python3
from random import sample, shuffle, randrange
from sys import stdin, stdout
from flask import Flask, render_template, request, session
from json import load


#global const's
CHOICE_NUM = 3
MAX_POINTS = 10
#global var's
correct = 0
app = Flask(__name__)
app.config.from_envvar('YOURAPPLICATION_SETTINGS')
#procedures
def get_questions():
    with open("test_data.json") as f:
        test_data = load(f)
    print(f"session: {session}")
    questions = sorted(list(test_data))
    return questions,[test_data[k] for k in questions]
@app.route("/", methods=['GET', 'POST'])
@app.route("/question", methods=['GET', 'POST'])
def question():
    if "score" not in session:
        session["score"] = 0
    questions,_ = get_questions()
    question_index = randrange(len(questions))
    if request.method == 'POST' and request.form.get('I was right') == 'correct':
        session["score"] += 1

    return render_template("question.html",
            question=questions[question_index],
            score=session["score"],
            question_index=question_index)

@app.route("/answer/<int:question_index>", methods=['GET', 'POST'])
def answer(question_index):
    _,answers = get_questions()
    if "score" not in session:
        session["score"] = 0
    return render_template("answer.html",
            score=session["score"],
            answer=answers[question_index])
