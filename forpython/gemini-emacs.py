#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/gemini-emacs.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-05-29T15:13:55.004820
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import sys


@click.command()
@click.option("-p", "--prompt", type=str, required=True)
def gemini_emacs(prompt):
    input_text = sys.stdin.read()
    processed_text = (
        f"prompt: {prompt}\n" + "Processed by Python:\n" + input_text.upper()
    )
    click.echo(processed_text)


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    gemini_emacs()
