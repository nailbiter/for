#!/usr/bin/env python3
"""===============================================================================

        FILE: non-reusable/backfill-progress.py

       USAGE: ./non-reusable/backfill-progress.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-07-06T11:22:27.027631
    REVISION: ---

==============================================================================="""

import click
import sys
from datetime import datetime
import re
from tqdm import tqdm

@click.command()
def backfill_progress():
    idx = 0
    max_cnt,tqdm_object = [None]*2
    pat = re.compile(r".*finished run (\d+) of (\d+).*")
    while True:
        try:
            line = input()
        except EOFError:
            break
        m = pat.match(line)
        if m is not None:
            i,cnt = [int(m.group(i+1)) for i in range(2)]
            if max_cnt is None:
                max_cnt = cnt
                tqdm_object = tqdm(total=max_cnt)
            if i>idx:
                tqdm_object.update(i-idx)
                idx = i
                
#        print(f"l({datetime.now().isoformat()}): \"{line}\"")
        click.echo(line)

if __name__=="__main__":
    backfill_progress()
