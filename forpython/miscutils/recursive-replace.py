#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/recursive-replace.py

       USAGE: ././miscutils/recursive-replace.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-22T22:59:59.340657
    REVISION: ---

TODO:
    1. config file
    2. rename files
==============================================================================="""

import click
import logging
import os
import re
import uuid
import subprocess


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@click.group()
@click.option("-w","--where", type=click.Path(), default=".", multiple=True)
@click.option("-e","--ext", multiple=True)
@click.option("-i","--ignore-dir", type=click.Path(), multiple=True)
@click.option("--debug/--no-debug", default=False)
@click.pass_context
@_add_logger
def recursive_replace(ctx,debug, where, ignore_dir, ext, logger=None):
    if debug:
        logging.basicConfig(level=logging.DEBUG)
    else:
        logging.basicConfig(level=logging.INFO)

    files_to_replace = set()
    for where_ in where:
        for root, dirs, files in os.walk(where_, topdown=False):
            # NB: currently ignore symlinks
            for name in files:
                fn = os.path.abspath(os.path.join(root, name))
                logger.debug(f"considering {fn}")
                _, ext_ = os.path.splitext(fn)
                ext_ = ext_[1:]
                if len(ext)>0 and ext_ not in ext:
                    logger.debug(f"{ext_} not in {ext} => ignore {fn}")
                    continue
                should_skip = False
                for ignore_dir_ in ignore_dir:
                    ignore_dir_ = os.path.abspath(ignore_dir_)
                    if fn.startswith(ignore_dir_):
                        logger.debug(f"{fn} starts with {ignore_dir_} => ignore {fn}")
                        should_skip = True
                        break
                if should_skip:
                    continue
                files_to_replace.add(fn)
    logger.debug(f"files_to_replace: {files_to_replace}")       

    ctx.ensure_object(dict)
    ctx.obj["files_to_replace"] = files_to_replace

@recursive_replace.command()
@click.option("--dry-run/--no-dry-run", default=False)
@click.argument("pat")
@click.argument("repl")
@click.pass_context
@_add_logger
def replace(ctx,dry_run,pat,repl,logger=None):
    files_to_replace = ctx.obj["files_to_replace"]
    for fn in files_to_replace:
        with open(fn) as f:
            s = f.read()
        new_s = re.sub(pat,repl,s)
        if s!=new_s:
            _, ext_ = os.path.splitext(fn)
            ext_ = ext_[1:]
            tmp_fn = f"/tmp/{uuid.uuid4()}.{ext_}"
            with open(tmp_fn,"w") as f:
                f.write(new_s)
            diff = subprocess.getoutput(f"diff {fn} {tmp_fn}")
            click.echo(f"diff for {fn}:\n{diff}\n")
            if not dry_run:
                with open(fn,"w") as f:
                    f.write(new_s)
        else:
            logger.debug(f"nothing found in {fn}")

@recursive_replace.command()
@click.option("--dry-run/--no-dry-run", default=False)
@click.argument("pat")
@click.argument("repl")
@click.option("--git/--no-git",default=False)
@click.pass_context
@_add_logger
def rename(ctx,dry_run,pat,repl,git,logger=None):
    files_to_replace = ctx.obj["files_to_replace"]
    for fn in files_to_replace:
        s = fn
        new_s = re.sub(pat,repl,s)
        if s!=new_s:
            cmd = f"{'git' if git else ''} mv {s} {new_s}"
            click.echo(f"> {cmd}")
            if not dry_run:
                subprocess.call(cmd,shell=True)
        else:
            logger.debug(f"nothing for {fn}")

if __name__ == "__main__":
    recursive_replace()
