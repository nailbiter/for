#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/.non_reusable/sort-du.py

       USAGE: ./miscutils/.non_reusable/sort-du.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-08-17T15:31:09.579407
    REVISION: ---

==============================================================================="""

import click
import sys
import pandas as pd
import re

@click.command()
def sort_du():
    lines = sys.stdin.readlines()
    du_df = pd.DataFrame([{k:v for v,k in zip(re.split(r"\s+",line.strip(),maxsplit=1),["size","name"])} for line in lines])
    du_df["_real_size"] = du_df["size"].apply(lambda s:float(s[:-1])+{un:2**(10*i) for i,un in enumerate("BKMG")}[s[-1]])
    du_df = du_df.sort_values(by="_real_size",ascending=False).drop(columns=["_real_size"])
    click.echo(du_df.to_string(index=None))

if __name__=="__main__":
    sort_du()
