#!/usr/bin/env python3
"""===============================================================================

        FILE: ./scripts/one-month.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-06-10T14:29:36.059131
    REVISION: ---

==============================================================================="""

import click
from datetime import datetime

@click.command()
@click.option("-m","--month",type=click.DateTime(["%Y-%m-%d"]))
@click.option("-s","--skip",type=int,default=0)
def one_month(month,skip):
    pass

if __name__=="__main__":
    one_month()

#./bookmark.py -d $DATE make && open ./pdfs/bookmark_$DATE.pdf && ./bookmark.py -d $DATE edit-loop
