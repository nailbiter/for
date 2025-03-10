"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_handy.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-10T20:45:16.086814
    REVISION: ---

==============================================================================="""
import typing
import click
from jinja2 import Template
import functools
import logging
from os import path


def load_file(filename: typing.Optional[str]) -> str:
    if filename is None:
        return None
    else:
        with click.open_file(filename) as f:
            return f.read()


@functools.singledispatch
def render_handy(a, params: dict = {}) -> str:
    pass


@render_handy.register
def _(a: str, params: dict = {}) -> str:
    return a


@render_handy.register
def _(a: dict, params: dict = {}) -> str:
    return handle_handy_file(**a, params=params)


def handle_handy_file(
    value: str = "",
    filename: typing.Optional[str] = None,
    is_render: bool = False,
    is_strip: bool = False,
    params: dict = {},
) -> str:
    if filename is not None:
        with open(filename) as f:
            value = f.read()
    if is_render:
        value = Template(value).render(dict(params=params, utils=UTILS))
    if is_strip:
        value = value.strip()
    return value


class Handy:
    def __init__(self, name: str, values: dict):
        self._values = values
        self._logger = logging.getLogger(self.__class__.__name__ + "." + name)

    def __call__(self, ctx, names: list[str]):
        params = dict(list(ctx.obj["params"]))
        self._logger.warning(f"params: {params}")
        click.echo(
            ctx.obj["sep"].join(
                [render_handy(self._values[name], params=params) for name in names]
            ),
            nl=not ctx.obj["strip"],
        )


UTILS: dict = dict(load_file=load_file)
