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

_DICT_FNS = {
    "main": path.join(path.dirname(path.abspath(__file__)), ".handy_aux_dict.json5"),
    "aux": path.join(path.dirname(path.abspath(__file__)), ".handy_dict.json5"),
}


@click.group()
@click.option(
    "--strip/--no-strip", "-s/ ", default=False, envvar="CLICK__STRIP", show_envvar=True
)
@click.pass_context
def handy(ctx, strip):
    ctx.ensure_object(dict)
    ctx.obj["strip"] = strip


class _Handy:
    def __init__(self, name, values):
        self._values = values

    def __call__(self, ctx, name):
        click.echo(self._values[name], nl=not ctx.obj["strip"])


if __name__ == "__main__":
    dicts = {}
    for k, fn in _DICT_FNS.items():
        logging.warning(fn)
        dicts[k] = {}
        if path.isfile(fn):
            logging.warning(f'loading "{fn}"')
            with open(fn) as f:
                dicts[k] = json5.load(f)

    merged = {}
    for k in set.union(*[set(d.keys()) for d in dicts.values()]):
        merged[k] = {}
        for d in dicts.values():
            merged[k] = {**merged[k], **d.get(k, {})}

    # click.echo(merged)

    for name, d in merged.items():
        handy.command(name=name)(
            click.argument("name", type=click.Choice(d))(
                click.pass_context(_Handy(name, d))
            )
        )
    handy()

    #    env_fn = path.join(path.dirname(path.abspath(__file__)), ".handy.env")
    #    if path.isfile(env_fn):
    #        logging.warning(f'loading "{env_fn}"')
    #        load_dotenv(dotenv_path=env_fn)

    # handy()
