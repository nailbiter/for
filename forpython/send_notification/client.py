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


@click.command()
@click.option("-d", "--delay-min", default=0)
@click.option("--debug/--no-debug", default=True)
@click.argument("message")
def client(delay_min, message, debug):
    if debug:
        logging.basicConfig(level=logging.INFO)
    dt = datetime.now() + timedelta(minutes=delay_min)
    message = parse.quote(message)
    url = f"localhost:5000/new_timer/{dt.strftime('%Y%m%d%H%M%S')}/{message}/slack"
    system(f"curl \"{url}\"")


if __name__ == "__main__":
    client()
