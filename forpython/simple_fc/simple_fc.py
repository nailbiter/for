#!/usr/bin/env python3
from random import sample, shuffle
from sys import stdin, stdout
from flask import Flask, render_template, request


#global const's
TEST = {
        "月曜日": "Monday",
        "火曜日": "Tuesday",
        "水曜日": "Wednesday",
        "木曜日": "Thursday",
        "金曜日":"Friday",
        "土曜日": "Saturday",
        "日曜日":"Sunday",
        }
CHOICE_NUM = 3
MAX_POINTS = 10
#global var's
correct = 0
app = Flask(__name__)
show_question = True
question = sample(TEST.keys(),1)[0]
#procedures
@app.route("/", methods=['GET', 'POST'])
def index():
    global correct
    global show_question
    global question
    print(f"request.method: {request.method}")
    if request.method == 'POST':
        if show_question:
            if request.form.get('Show Other Side') == 'show_other_side':
                show_question = False
        else:
            if request.form.get('I was right') == 'correct':
                correct += 1
            show_question = True    
    elif request.method == 'GET':
        print("No Post Back Call")

    print(f"show_question: {show_question}")
    if show_question:
        question = sample(TEST.keys(),1)[0]
        return render_template("index.html",show_question=show_question,question=question,score=correct)
    else:
        return render_template("index.html",show_question=show_question,answer=TEST[question],score=correct)
def getQuestion():
    question = sample(TEST.keys(),1)[0]
    true_answer = TEST[question]
    answers = [true_answer,*sample(list(set(TEST.values())-{true_answer}),CHOICE_NUM-1)]
    shuffle(answers)
    return question,true_answer,answers

#main        
