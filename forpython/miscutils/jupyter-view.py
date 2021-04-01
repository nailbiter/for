#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/jupyter-view.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-11T10:52:29.201531
    REVISION: ---

==============================================================================="""

import click
import os
import hashlib
from os import path

@click.command()
@click.argument("filename",type=click.Path())
def jupyter_view(filename):
    _,ext = path.splitext(filename)
    assert ext=='.ipynb', f"filename should end in `.ipynb`, given: {filename}"
    out_fn = f"/tmp/{str(hashlib.sha256(filename.encode()).hexdigest())}.html"
    click.echo(out_fn)
    os.system(f"jupyter nbconvert {filename} --to html --stdout > {out_fn}")
    os.system(f"open {out_fn}")

if __name__=="__main__":
    jupyter_view()
