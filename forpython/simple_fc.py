#!/usr/bin/env python3
from random import sample, shuffle
from sys import stdin, stdout


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

#main
correct = 0
while correct < MAX_POINTS:
    question = sample(TEST.keys(),1)[0]
    true_answer = TEST[question]
    answers = [true_answer,*sample(list(set(TEST.values())-{true_answer}),CHOICE_NUM-1)]
    shuffle(answers)
    print(f"what is English for \"{question}\"?")
    for i,a in enumerate(answers):
        print(f"\t{i+1}: {a}")
    stdout.write("> ")
    stdout.flush()
    s = stdin.readline()
    s = s.strip()
    if s=="exit":
        print(f"point: {correct}/{MAX_POINTS}")    
        break
    try:
        ans = int(s)
    except ValueError:
        print(f"please, type number from 1 to {CHOICE_NUM} or \"exit\" (without quotes)")
        continue
    if not 1 <= ans <= CHOICE_NUM:
        print(f"please, type number from 1 to {CHOICE_NUM} or \"exit\" (without quotes)")
        continue
    if answers[ans-1]==true_answer:
        print("correct!!")
        correct += 1
    else:
        print(f"wrong! (was {true_answer})")
    print(f"point: {correct}/{MAX_POINTS}")    
