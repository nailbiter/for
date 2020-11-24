#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/bq.py

       USAGE: .//Users/nailbiter/for/forpython/fordatawise/bq.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-24T15:39:11.331208
    REVISION: ---

==============================================================================="""

import click

@click.command()
@click.argument("fn",type=click.Path())
def bq(fn):
    pass

if __name__=="__main__":
    bq()
