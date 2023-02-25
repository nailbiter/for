#!/usr/bin/env python3
"""===============================================================================

        FILE: tabular-quiz.py

       USAGE: ./tabular-quiz.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-02-25T15:57:21.504707
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging

@click.command()
def tabular_quiz():
    pass

if __name__=="__main__":
#    if path.isfile(".env"):
#        logging.warning("loading .env")
#        load_dotenv()
    tabular_quiz()