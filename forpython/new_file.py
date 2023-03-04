#!/usr/bin/env python3
from os.path import realpath, split, basename, join, splitext
import os.path
from os import access, X_OK, walk
from jinja2 import Template, FileSystemLoader, Environment
import click
from datetime import datetime
import logging


def _get_template_dirname(dir_):
    dirname, _ = split(realpath(__file__))
    return join(dirname, "_new_file", dir_)


def _get_template_names(dir_):
    _, _, fns = next(walk(_get_template_dirname(dir_)))
    _TEMPLATE_EXT = ".jinja.py"
    return [fn[:-len(_TEMPLATE_EXT)] for fn in fns if fn.endswith(_TEMPLATE_EXT)]


def _render_template(fn, dir_, **kwargs):
    template_dirname = _get_template_dirname(dir_)
    env = Environment(loader=FileSystemLoader(template_dirname))
    template = env.get_template(fn)
    return template.render({
        **kwargs,
        "os": {
            "path": os.path
        },
        "converters": {
            "snake_to_camel": lambda s: "".join([s_.capitalize() for s_ in s.split("_")]),
            "kebab_to_camel": lambda s: s.replace("-", "_"),
        }
    })


@click.group()
@click.option("-e", "--email", envvar="EMAIL", default="alozz1991@gmail.com")
@click.option("-o", "--organization", envvar="ORGANIZATION", default="")
@click.pass_context
def new_file_group(ctx, **kwargs):
    ctx.ensure_object(dict)
    for k, v in kwargs.items():
        ctx.obj[k] = v


def _render_and_spitout(dir_, archetype, fn, stdout, organization, email):
    s = _render_template(f"{archetype}.jinja.py",
                         dir_,
                         filename=fn,
                         now=datetime.now(),
                         email=email,
                         is_executable=False if fn is None else access(fn, X_OK),
                         organization=organization
                         )
    if stdout:
        print(s)
    else:
        with open(fn, "w") as f:
            f.write(s)


@new_file_group.command()
@click.argument("fn", type=click.Path())
@click.argument("archetype", type=click.Choice(_get_template_names("new_file")), default="default")
@click.option("-s", "--stdout", is_flag=True)
@click.option("--silent/--no-silent",default=True)
@click.pass_context
def new_file(ctx,silent,stdout=False, **kwargs):
    if not silent:
        logging.warning(f"kwargs: {kwargs}")
    _render_and_spitout(dir_="new_file", stdout=stdout, **kwargs, **ctx.obj)


@new_file_group.command()
@click.argument("archetype", type=click.Choice(_get_template_names("snippet")), default="default")
@click.pass_context
def snippet(ctx, **kwargs):
    _render_and_spitout(dir_="snippet", fn=None, **
                        kwargs, **ctx.obj, stdout=True)


if __name__ == "__main__":
    new_file_group()
