#!/usr/bin/env python3
"""===============================================================================

        FILE: tesseract.py

       USAGE: ./tesseract.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-01T00:21:14.193222
    REVISION: ---

==============================================================================="""

import click
import os
import pandas as pd
from datetime import datetime
import logging


def _s(s):
    return s.split(" ")


@click.command()
@click.option("-l", "--language", type=click.Choice(_s("jpn eng chi_sim chi_tra deu")), default="jpn")
@click.option("-i", "--index", type=int, default=-1)
@click.option("--debug/--no-debug", default=True)
@click.option("--pbcopy/--no-pbcopy", default=False)
def tesseract(language, index, debug, pbcopy):
    if debug:
        logging.basicConfig(level=logging.INFO)
    files_ = []
    for root, dirs, files in os.walk("/Users/nailbiter/Desktop", topdown=False):
        for name in files:
            if name.endswith(".png"):
                fn = os.path.join(root, name)
                files_.append({
                    "last_modification": datetime.fromtimestamp(os.path.getmtime(fn)),
                    "filename": fn
                })
    df = pd.DataFrame(files_)
    df = df.sort_values(by="last_modification")
    logging.info(f"\n{df}")
    r = df.to_dict(orient="records")[index]
    logging.info(f"r: {r}")
    os.system(f"tesseract -l {language} \"{r['filename']}\" stdout")
    if pbcopy:
        os.system(
            f"tesseract -l {language} \"{r['filename']}\" stdout 2>/dev/null| pbcopy")


if __name__ == "__main__":
    tesseract()
