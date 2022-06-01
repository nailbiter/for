"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/trello/_trello/__init__.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-02T12:20:17.126424
    REVISION: ---

==============================================================================="""

from jinja2 import Template
from os.path import join, dirname, split
import logging

_TEMPLATES_DIR = f"{split(__file__)[0]}/templates"


def render_template(fn, **kwargs):
    _dir = dirname(__file__)
    with open(join(_dir, _TEMPLATES_DIR, fn)) as f:
        return Template(f.read()).render(kwargs)
