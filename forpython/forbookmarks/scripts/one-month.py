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
from calendar import monthrange
import os

@click.command()
@click.option("-m","--month",type=click.DateTime(["%Y-%m-%d"]))
@click.option("-s","--skip",type=int,default=0)
def one_month(month,skip):
    if month is None:
        month = datetime.now()
    days = [datetime(month.year,month.month,d+1) for d in range(list(monthrange(month.year,month.month))[1])]
    days = [day for day in days if day.weekday()==6]
    days = days[skip:]
    for day in days:
        #./bookmark.py -d $DATE make && open ./pdfs/bookmark_$DATE.pdf && ./bookmark.py -d $DATE edit-loop
        err = os.system(f"""./bookmark.py -d {day.strftime('%Y-%m-%d')} make && open ./pdfs/bookmark_{day.strftime('%Y-%m-%d')}.pdf && ./bookmark.py -d {day.strftime('%Y-%m-%d')} edit-loop""")
        assert err==0

if __name__=="__main__":
    one_month()

