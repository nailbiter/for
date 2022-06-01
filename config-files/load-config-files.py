#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/config-files/load-config-files.py

       USAGE: .//Users/nailbiter/for/config-files/load-config-files.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-26T13:03:45.850841
    REVISION: ---

==============================================================================="""

import click
from jinja2 import Environment, Template
from jinja2.loaders import FileSystemLoader
import json
import logging
import os
from os import path
import uuid

_LOAD_WHAT = ["hosts"]


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@_add_logger
def _system(cmd, dry_run=False, logger=None):
    logger.info(f"{'x' if dry_run else 'o'}> {cmd}")
    if not dry_run:
        os.system(cmd)


@click.command()
@click.option("-p", "--profile", type=click.Choice(["work","personal-server"]), required=True, envvar="PROFILE")
@click.option("-l", "--load-what", type=click.Choice(_LOAD_WHAT), multiple=True)
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--debug/--no-debug",default=False)
def load_config_files(profile, load_what, dry_run,debug):
    if debug:
        logging.basicConfig(level=logging.INFO)
    if len(load_what) == 0:
        load_what = tuple(_LOAD_WHAT)
    jinja_env = Environment(loader=FileSystemLoader(".templates"))
    for lw in load_what:
        if lw == "hosts":
            with open(".data/hosts.json") as f:
                data = json.load(f)
            data["hosts"] = sorted(list(set(data["hosts"])))
            with open(".data/hosts.json","w") as f:
                json.dump(data,f,indent=2,sort_keys=True)
            tmp_fn = path.join("/tmp",f"{uuid.uuid4()}.txt")
            with open(tmp_fn,"w") as f:
                f.write(jinja_env.get_template("hosts").render(data))
            _system(f"cp {tmp_fn} /etc/hosts",dry_run)    
        else:
            raise NotImplementedError(lw)


if __name__ == "__main__":
    load_config_files()
