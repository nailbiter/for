"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/pandas_repack.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-24T17:53:23.867857
    REVISION: ---

==============================================================================="""

import pandas as pd
import sys

df = pd.read_csv(sys.stdin,names=["x"])
df = pd.DataFrame({c:list(df.x)[3*i:3*i+3] for i,c in enumerate("xyz")})
print(df.to_csv(index=None,header=None,sep="\t"))
