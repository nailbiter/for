#!/usr/bin/env python3
"""===============================================================================

        FILE: add_kernel.py

       USAGE: ./add_kernel.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-10-28T14:36:17.914759
    REVISION: ---

==============================================================================="""

from subprocess import getoutput
from os import system
from re import match

pwd=getoutput("pwd")
pwd = pwd.replace("/",".").strip(".")
# Kernel names can only contain ASCII letters and numbers and these separators: - . _ (hyphen, period, and underscore).
assert match(r"^[a-zA-Z0-9._-]+$",pwd) is not None
print(pwd)
#system(f"")
system(f"ipython kernel install --user --name={pwd}")
