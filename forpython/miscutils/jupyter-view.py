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
import uuid
import subprocess


def _get_tmp_fn(ext, bn=None):
    assert ext[0] == ".", ext
    if bn is None:
        bn = str(uuid.uuid4())
    return f"/tmp/{bn}{ext}"


def _assert_exclusive(kwargs, args=None):
    if args is None:
        args = list(kwargs)
    assert sum([v is not None for k, v in kwargs.items() if k in args]
               ) <= 1, f"only one of {','.join(args)} can be given"


@click.command()
@click.argument("filename", type=click.Path())
@click.option("-c", "--commit-hash")
@click.option("-h", "--head", type=int)
def jupyter_view(filename, **kwargs):
    _assert_exclusive(kwargs, "commit_hash,head".split(","))
    commit_hash, head = [kwargs[k] for k in "commit_hash,head".split(",")]
    if commit_hash is not None:
        _tmp_fn = _get_tmp_fn(".ipynb")
        os.system(f"git show {commit_hash}:{filename} > {_tmp_fn}")
        filename = _tmp_fn
    elif head is not None:
        _tmp_fn = _get_tmp_fn(".ipynb")
        os.system(f"git show HEAD~{head}:{filename} > {_tmp_fn}")
        filename = _tmp_fn
    _, ext = path.splitext(filename)
    assert ext == '.ipynb', f"filename should end in `.ipynb`, given: {filename}"
    out_fn = _get_tmp_fn(".html", bn=str(
        hashlib.sha256(filename.encode()).hexdigest()))
    click.echo(out_fn)
    ec, out = subprocess.getstatusoutput(
        f"jupyter nbconvert {filename} --to html --stdout > {out_fn}")
    assert ec == 0, out
    os.system(f"open {out_fn}")


if __name__ == "__main__":
    jupyter_view()
