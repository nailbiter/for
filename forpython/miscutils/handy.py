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
import functools
import click
from dotenv import load_dotenv
from _handy import Handy

_DICT_FNS = {
    "main": path.join(path.dirname(path.abspath(__file__)), ".handy_dict.json5"),
    "aux": path.join(path.dirname(path.abspath(__file__)), ".handy_aux_dict.json5"),
}


@click.group()
@click.option(
    "--strip/--no-strip", "-s/ ", default=False, envvar="CLICK__STRIP", show_envvar=True
)
@click.option("-s", "--sep", type=str, default="")
@click.option("-p", "--param", "params", type=(str, str), multiple=True)
@click.option(
    "-C", "--custom-function", "custom_functions", type=(str, str, str), multiple=True
)
@click.pass_context
def handy(ctx, **kwargs):
    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v


@handy.command()
@click.option("-p", "-f", "--prompt-file", type=click.Path(), required=True)
@click.pass_context
def render(ctx, prompt_file):
    Handy(
        values={
            "dummy": dict(
                filename=prompt_file,
                is_render=True,
                is_strip=True,
            )
        }
    )(ctx, ["dummy"])


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
        assert k != "render"
        merged[k] = {}
        for d in dicts.values():
            merged[k] = {**merged[k], **d.get(k, {})}

    # click.echo(merged)

    for name, d in merged.items():
        functools.reduce(
            lambda a, b: b(a),
            [
                Handy(name, d),
                click.pass_context,
                click.argument("names", type=click.Choice(d), nargs=-1),
                handy.command(name=name),
            ],
        )
    handy()

    #    env_fn = path.join(path.dirname(path.abspath(__file__)), ".handy.env")
    #    if path.isfile(env_fn):
    #        logging.warning(f'loading "{env_fn}"')
    #        load_dotenv(dotenv_path=env_fn)

    # handy()
