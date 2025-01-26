#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/aprompt.py

       USAGE: .//Users/nailbiter/for/forpython/aprompt.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-01-26T12:50:30.958685
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import functools

moption = functools.partial(click.option)


@click.command()
def aprompt():
    pass


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    aprompt()
