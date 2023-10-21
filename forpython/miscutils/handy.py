#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/.non_reusable/handy-japanese.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/.non_reusable/handy-japanese.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-07-26T12:16:39.150834
    REVISION: ---

==============================================================================="""

import json
import json5
import logging
from os import path

import click
from dotenv import load_dotenv

aux_dict_fn = path.join(path.dirname(path.abspath(__file__)), ".handy_aux_dict.json")
aux_dict = {}
if path.isfile(aux_dict_fn):
    logging.warning(f'loading "{aux_dict_fn}"')
    with open(aux_dict_fn) as f:
        aux_dict = json.load(f)


@click.group()
@click.option(
    "--strip/--no-strip", "-s/ ", default=False, envvar="CLICK__STRIP", show_envvar=True
)
@click.pass_context
def handy(ctx, strip):
    ctx.ensure_object(dict)
    ctx.obj["strip"] = strip


@click.pass_context
def japanese(ctx, sentence):
    click.echo(
        {
            **aux_dict.get("jap", {}),
        }[sentence],
        nl=not ctx.obj["strip"],
    )


if __name__ == "__main__":
    #    env_fn = path.join(path.dirname(path.abspath(__file__)), ".handy.env")
    #    if path.isfile(env_fn):
    #        logging.warning(f'loading "{env_fn}"')
    #        load_dotenv(dotenv_path=env_fn)
    handy()
