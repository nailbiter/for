#!/usr/bin/env python3
"""===============================================================================

        FILE: ./fordatawise/non-reusable/sort-alphabet.py

       USAGE: ././fordatawise/non-reusable/sort-alphabet.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-15T10:17:56.173236
    REVISION: ---

==============================================================================="""

import click

@click.command()
@click.argument("s")
def sort_alphabet(s):
    s = set(list(s))
    click.echo(str(sorted(s)))

if __name__=="__main__":
    sort_alphabet()
