#!/usr/bin/env python3
"""===============================================================================

        FILE: string-strip.py

       USAGE: ./string-strip.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-12-16T19:26:19.784902
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import sys


@click.command()
def string_strip():
    s = sys.stdin.read()
    click.echo(s.strip(), nl=False)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    string_strip()
