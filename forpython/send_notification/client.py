#!/usr/bin/env python3
"""===============================================================================

        FILE: client.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-30T22:46:27.183005
    REVISION: ---

==============================================================================="""

import click
import os
from urllib import parse
from datetime import datetime, timedelta
from _send_notification import system
import logging


@click.group()
@click.option("--debug/--no-debug", default=True)
def client(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


@client.command()
@click.option("-d", "--delay-min", default=0)
@click.argument("message")
def new_timer(delay_min, message):
    dt = datetime.now() + timedelta(minutes=delay_min)
    url = f"localhost:5000/new_timer/{dt.strftime('%Y%m%d%H%M%S')}/{parse.quote(message)}/slack"
    system(f"curl \"{url}\"")


if __name__ == "__main__":
    client()
