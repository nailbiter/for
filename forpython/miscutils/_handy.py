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
import importlib.util


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
        params = collate_params(list(ctx.obj["params"]))
        self._logger.warning(f"params: {params}")
        click.echo(
            ctx.obj["sep"].join(
                [render_handy(self._values[name], params=params) for name in names]
            ),
            nl=not ctx.obj["strip"],
        )


@functools.singledispatch
def str_or_list_to_list(x):
    return x


@str_or_list_to_list.register
def _(x: str):
    return [x]


def collate_params(params: list) -> dict:
    res = {}
    for k, v in params:
        res[k] = _collate_params(res.get(k), v)
    return res


@functools.singledispatch
def _collate_params(x, v: str):
    pass


@_collate_params.register
def _(x: None, v):
    return v


@_collate_params.register
def _(x: str, v):
    return [x, v]


@_collate_params.register
def _(x: list, v):
    x.append(x)
    return x


UTILS: dict = dict(
    load_file=load_file,
    str_or_list_to_list=str_or_list_to_list,
)


def load_function_from_file(filepath: str, function_name: str) -> typing.Callable:
    """
    Loads a Python file and retrieves a function from it.

    Args:
        filepath (str): The path to the Python file.
        function_name (str): The name of the function to retrieve.

    Returns:
        callable: The function object, or None if an error occurs.
    """
    try:
        # Create a module spec from the file path
        spec = importlib.util.spec_from_file_location("module_name", filepath)

        if spec is None:
            logging.error(f"Error: Could not find module at {filepath}")
            return None

        # Create a new module based on the spec
        module = importlib.util.module_from_spec(spec)

        # Load the module
        spec.loader.exec_module(module)

        # Get the function from the module
        function = getattr(module, function_name)

        if not callable(function):
            logging.error(f"Error: {function_name} is not a function in {filepath}")
            return None

        return function

    except FileNotFoundError:
        logging.error(f"Error: File '{filepath}' not found.")
        return None
    except AttributeError:
        logging.error(f"Error: Function '{function_name}' not found in '{filepath}'.")
        return None
    except Exception as e:
        logging.error(f"An unexpected error occurred: {e}")
        return None
