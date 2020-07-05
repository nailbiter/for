#!/usr/bin/env python3
from random import sample, shuffle
from sys import stdin, stdout
from flask import Flask, render_template, request
from json import load


#global const's
CHOICE_NUM = 3
MAX_POINTS = 10
#global var's
correct = 0
app = Flask(__name__)
show_question = True
question = ""
#procedures
@app.route("/", methods=['GET', 'POST'])
def index():
    global correct
    global show_question
    global question
    test_data = {}
    with open("test_data.json") as f:
        test_data = load(f)
        print(f"test_data: {test_data}")
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
        question = sample(test_data.keys(),1)[0]
        return render_template("index.html",show_question=show_question,question=question,score=correct)
    else:
        return render_template("index.html",show_question=show_question,answer=test_data[question],score=correct)
def getQuestion(test_data):
    question = sample(test_data.keys(),1)[0]
    true_answer = test_data[question]
    answers = [true_answer,*sample(list(set(test_data.values())-{true_answer}),CHOICE_NUM-1)]
    shuffle(answers)
    return question,true_answer,answers

#main        
