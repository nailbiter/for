import json
from jinja2 import Template
from random import sample, shuffle
import logging
from datetime import date, datetime
from bson.objectid import ObjectId


class Question():
    def __init__(self, card, deck, is_front_to_back, back_index):
        self._card = card
        self._deck = deck
        self._is_front_to_back = is_front_to_back
        self._back_index = back_index
        self._score = None
        self._logger = logging.getLogger(self.__class__.__name__)

    def get_question_text(self):
        pass

    def _get_jinja_env(self):
        return {
            "card": self._card,
            "deck": self._deck,
            "is_front_to_back": self._is_front_to_back,
            "back_index": self._back_index,
            "score": self._score
        }

    def grade(self, answer):
        """
        :return (grade,msg): where grade from 0.0 to 1.0 or None if was not accepted; msg is optional message
        """
        self._given_answer = answer
        self._answer_time = datetime.now().isoformat()
        return 0.0, None

    def to_json(self):
        assert self._score is not None
        res = {k: v for k, v in self._get_jinja_env().items(
        ) if k in ["is_front_to_back", "back_index", "score"]}
        res["card"] = str(self._card["_id"])
        res["given_answer"] = self._given_answer
        res["answer_time"] = self._answer_time
        res["TAG"] = self.__class__.TAG
        return json.dumps(res)


class _SelectionQuestion(Question):
    TAG = "selection"
    _NUMBER_OF_ANSWERS = 4

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        assert len(self._deck) > _SelectionQuestion._NUMBER_OF_ANSWERS > 1

        self._logger.info(f"card: {self._card}")
        self._answers = []
        other_cards = sample([c for c in self._deck if c["_id"]
                              != self._card["_id"]], self._NUMBER_OF_ANSWERS-1)
        _aux = ",".join([b for i, b in enumerate(
            self._card["back"]) if i != self._back_index])
        if len(_aux) > 0:
            _aux = f" ({_aux})"
        if self._is_front_to_back:
            self._question = self._card["front"]+_aux
            self._answers.append(self._card["back"][self._back_index])
            for card in other_cards:
                _back_index = min(len(card["back"])-1, self._back_index)
                self._answers.append(card["back"][_back_index])
        else:
            self._question = self._card["back"][self._back_index]+_aux
            self._answers = [self._card["front"], *
                             [card["front"] for card in other_cards]]

        enumerated_answers = list(enumerate(self._answers))
        shuffle(enumerated_answers)
        self._correct_answer_index = next(
            i for i, (old_i, _) in enumerate(enumerated_answers) if old_i == 0)
        self._answers = [a for i, a in enumerated_answers]

    def _get_jinja_env(self):
        return {
            **super()._get_jinja_env(),
            "answers": self._answers,
            "question": self._question,
        }

    def grade(self, answer):
        super().grade(answer)
        try:
            ai = int(answer)
        except ValueError:
            return None, "not a number"
        if ai < 0:
            return None, "answer should be >=0"
        else:
            self._logger.info(f"answer: {ai}")
            self._logger.info(
                f"correct_answer_index: {self._correct_answer_index}")
            is_correct = ai == (self._correct_answer_index+1)
            self._score = 1.0 if is_correct else 0.0
            return self._score, None if is_correct else self._answers[self._correct_answer_index]

    def get_question_text(self):
        env = self._get_jinja_env()
        return Template("""
        select the correct answer for "{{question}}":
        {%for i in range(answers|length)-%}
        {{i+1}}. {{answers[i]}}
        {%endfor-%}
        """).render(**env)


_QUESTION_CLASSES = [_SelectionQuestion]


def get_question_types():
    return [cls.TAG for cls in _QUESTION_CLASSES]


def get_question(type_, *args, **kwargs):
    _d = {cls.TAG: cls for cls in _QUESTION_CLASSES}
    assert type_ in _d
    return _d[type_](*args, **kwargs)
