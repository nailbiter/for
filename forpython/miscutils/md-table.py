#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/md-table.py

       USAGE: ./miscutils/md-table.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-09T13:16:03.832754
    REVISION: ---

==============================================================================="""

import click


@click.command()
@click.argument("rownum", type=int)
@click.argument("colnum", type=int)
def md_table(rownum, colnum):
    click.echo(" TH ".join(["|"]*(colnum+1)))
    click.echo(" --- ".join(["|"]*(colnum+1)))
    for i in range(rownum):
        click.echo(" TD ".join(["|"]*(colnum+1)))


if __name__ == "__main__":
    md_table()
