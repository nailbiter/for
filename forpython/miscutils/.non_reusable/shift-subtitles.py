#!/usr/bin/env python3
"""===============================================================================

        FILE: /tmp/80fcd231_8499_470f_9ade_c92357a55923.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-06-21T21:37:19.883796
    REVISION: ---

==============================================================================="""

import click
from datetime import datetime, timedelta

@click.command()
@click.option("--sub-file",type=click.Path(),required=True)
@click.option("-c","--chunk-index",type=int,default=1)
@click.option("-t","--time",)
def s_80fcd231_8499_470f_9ade_c92357a55923(sub_file,chunk_index,time):
    with open(sub_file) as f:
        txt = f.read()
    chunks = txt.split("\n\n")
#    times = [chunk.split("\n") for chunk in chunks]
#    anchor = times[chunk_index-1]
    anchor = chunks[chunk_index-1].split("\n")[1].split(" --> ")[0]
    anchor = datetime.strptime(anchor,"%H:%M:%S,%f")
#    print(anchor)

    time = datetime(year=1900,month=1,day=1,**{k:int(v) for v,k in zip(time.split(":"), ["minute","second"])})
    diff = time-anchor
#    print(diff)
    
    for i,chunk in enumerate(chunks):
        lines = chunk.split("\n")
        if len(lines)<3:
            continue
        try:
            times = lines[1].split(" --> ")
        except Exception:
            print((lines,i))
        lines[1] = " --> ".join([(datetime.strptime(t,"%H:%M:%S,%f")+diff).strftime("%H:%M:%S,%f")[:12] for t in times])
        chunk = "\n".join(lines)
        chunks[i] = chunk
        
    print("".join(map(lambda s:s+"\n\n",chunks)))
    

if __name__=="__main__":
    s_80fcd231_8499_470f_9ade_c92357a55923()
