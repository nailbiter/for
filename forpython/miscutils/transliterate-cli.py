#!/usr/bin/env python3
"""===============================================================================

        FILE: transliterate.py

       USAGE: ./transliterate.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-26T21:16:43.351631
    REVISION: ---

==============================================================================="""

import click
import transliterate
import os

@click.command()
@click.option("--pbpaste-command",default="xsel --clipboard --input")
def transliterate_cli(pbpaste_command):
    should_continue = True
    saved = None
    while should_continue:
        s = input("> ")
        s = s.strip()
        if s=="copy":
            cmd = f"""echo "{saved}" | {pbpaste_command} """
            os.system(cmd)
            print(cmd)
        elif s=="":
            should_continue = False
            print("bye")
        else:
            saved = transliterate.translit(s,"ru")
            saved = saved.replace("Ь","ь")
            print(saved)

if __name__=="__main__":
    transliterate_cli()
