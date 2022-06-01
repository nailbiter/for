"""===============================================================================

        FILE: tests/test_templates.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-06T17:48:11.996029
    REVISION: ---

==============================================================================="""
import logging
import unittest
from jinja2 import Template, FileSystemLoader, Environment
from os import path
import json
from _bookmark import roman_to_int


class TestTemplates(unittest.TestCase):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self._logger = logging.getLogger(self.__class__.__name__)
        self._jinja_env = Environment(
            loader=FileSystemLoader("templates", followlinks=True))

    def test_something(self):
        _dir = path.join(path.split(__file__)[0], ".data", "test_templates")
        with open(path.join(_dir, "data.json")) as f:
            data = json.load(f)
        for r in data:
            res = self._jinja_env.get_template(r["template_fn"]).render(
                {**r["render_data"], "roman_to_int": roman_to_int})
            with open(path.join(_dir, r["res_fn"])) as f:
                exp = f.read().strip()
            self.assertEqual(res, exp)
        print(f"{len(data)} tests ran")    


if __name__ == "__main__":
    unittest.main()
