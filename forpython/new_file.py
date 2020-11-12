#!/usr/bin/env python3
from os.path import realpath, split, basename, join, splitext
import os.path
from os import access, X_OK
from jinja2 import Template
import click
from datetime import datetime


def _render_template(fn, **kwargs):
    dirname, _ = split(realpath(__file__))
    with open(join(dirname, "_new_file", fn)) as f:
        return Template(f.read()).render({
            **kwargs, 
            "os": {"path": os.path}, 
            "converters": {
                "snake_to_camel":lambda s:"".join([s_.capitalize() for s_ in s.split("_")]),
            }})


@click.command()
@click.argument("fn", type=click.Path())
@click.option("-s", "--stdout", is_flag=True)
@click.option("-e", "--email", envvar="EMAIL", default="alozz1991@gmail.com")
@click.option("-o", "--organization", envvar="ORGANIZATION", default="")
@click.argument("archetype", type=click.Choice(["default", "click", "class"]), default="default")
def new_file(fn, email, organization, archetype, stdout=False):
    s = _render_template(f"{archetype}.jinja.py", filename=fn, now=datetime.now(
    ), email=email, is_executable=access(fn, X_OK), organization=organization)
    if stdout:
        print(s)
    else:
        with open(fn, "w") as f:
            f.write(s)


if __name__ == "__main__":
    new_file()
