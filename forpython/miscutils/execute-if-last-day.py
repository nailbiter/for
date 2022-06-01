#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/execute-if-last-day.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-06-10T17:12:11.045658
    REVISION: ---

==============================================================================="""

import click
import os
from datetime import datetime, timedelta

@click.command()
@click.argument("command")
@click.option("-d","--day",type=click.DateTime(["%Y-%m-%d"]))
def execute_if_last_day(command,day):
    if day is None:
        day = datetime.now()
    if (day+timedelta(days=7)).month!=day.month:
        click.echo("execute")
        os.system(command)
    else:
        click.echo("pass")

if __name__=="__main__":
    execute_if_last_day()
