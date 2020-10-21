#!/usr/bin/env python3
from os.path import realpath, split, basename, join
from os import access, X_OK
from jinja2 import Template
import click
from datetime import datetime


def _render_template(fn, **kwargs):
    dirname, _ = split(realpath(__file__))
    with open(join(dirname, "_new_file", fn)) as f:
        return Template(f.read()).render(kwargs)


@click.command()
@click.argument("fn", type=click.Path())
@click.option("-s", "--stdout", is_flag=True)
@click.option("-e", "--email", envvar="EMAIL",default="alozz1991@gmail.com")
def new_file(fn, email, stdout=False):
    s = _render_template("template.py", filename=fn, now=datetime.now(), email=email, is_executable=access(fn, X_OK))
    if stdout:
        print(s)
    else:
        with open(fn, "w") as f:
            f.write(s)


if __name__ == "__main__":
    new_file()
