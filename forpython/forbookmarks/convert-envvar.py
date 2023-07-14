#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/forbookmarks/convert-envvar.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-07-14T20:47:05.002578
    REVISION: ---

==============================================================================="""

import subprocess
import re
import regex
import logging

ec, out = subprocess.getstatusoutput("pbpaste")
out = out.strip()
logging.warning(f'"{out}"')
l = regex.split(r"(\.) ([\p{IsCyrillic}&&\p{Lu}])", out)
logging.warning(l)
apo, stol, gos, pel = l
apostol, gospel = apo + stol, gos + pel
logging.warning(dict(apostol=apostol, gospel=gospel))
print(
    f"""
# {out}
export GOSPEL="{gospel}"
export APOSTOL="{apostol}"
""".strip()
    + "\n"
)
