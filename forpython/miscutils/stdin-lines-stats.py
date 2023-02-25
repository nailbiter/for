#!/usr/bin/env python3
"""===============================================================================

        FILE: stdin-lines-stats.py

       USAGE: ./stdin-lines-stats.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-09-08T22:34:52.173216
    REVISION: ---

TODO:
    1. median/mean/
    2. percentile
    3. unique
    4. shuffle

==============================================================================="""

import logging
import operator
import os
import sys
from os import path

import black

# import stringcase
import caseconverter
import click
import numpy as np
from dotenv import load_dotenv
from jinja2 import Environment, FileSystemLoader, Template


@click.group()
@click.option("-s", "--seed", type=int)
@click.option("--input-numeric/--no-input-numeric", default=False)
@click.option(
    "--template-folder-path",
    type=click.Path(),
    default=path.join(path.dirname(__file__), "_stdin_lines_stats_data/templates"),
)
@click.pass_context
def stdin_lines_stats(ctx, seed, input_numeric, template_folder_path):
    if seed is not None:
        np.random.seed(seed)
    ctx.ensure_object(dict)
    lines = sys.stdin.readlines()
    lines = [line.strip() for line in lines]
    if input_numeric:
        lines = [float(line) for line in lines]
    ctx.obj["lines"] = lines
    ctx.obj["jinja_env"] = Environment(loader=FileSystemLoader(template_folder_path))


@stdin_lines_stats.command()
@click.option(
    "-p",
    "--prefix-string",
    required=True,
    envvar="STDIN_LINES_STATS__PREFIX__PREFIX_STRING",
)
@click.pass_context
def prefix(ctx, prefix_string):
    click.echo("\n".join([f"{prefix_string}{line}" for line in ctx.obj["lines"]]))


@stdin_lines_stats.command()
@click.option("-n", type=int, required=True)
@click.option("--sort-output/--no-sort-output", "-s/ ", default=False)
@click.pass_context
def sample(ctx, n, sort_output):
    res = np.random.choice(ctx.obj["lines"], n)
    if sort_output:
        res = sorted(res)
    click.echo("\n".join(map(str, res)))


## https://pypi.org/project/stringcase/
# _AVAILABLE_CASES = [
#    "alphanum",
#    "camel",
#    "capital",
#    "const",
#    "lower",
#    "pascal",
#    "path",
#    "sentence",
#    "snake",
#    "spinal",
#    "title",
#    "trim",
#    "upper",
# ]

# https://pypi.org/project/case-converter/
_AVAILABLE_CASES = [
    "camel",
    "cobol",
    "flat",
    "kebab",
    "macro",
    "pascal",
    "snake",
]


@stdin_lines_stats.command()
@click.option("--to", "-t", required=True, type=click.Choice(_AVAILABLE_CASES))
@click.pass_context
def case_conversion(ctx, to):
    #    module = stringcase
    module = caseconverter
    for line in ctx.obj["lines"]:
        f = operator.methodcaller(f"{to}case", line)
        line = line.strip()
        click.echo(f(module))


@stdin_lines_stats.command()
@click.option("-s", "--split-string", required=True)
@click.option("-j", "--join-string", default="\n")
@click.pass_context
def split(ctx, split_string, join_string):
    click.echo(join_string.join("\n".join(ctx.obj["lines"]).split(split_string)))


@stdin_lines_stats.group()
@click.pass_context
def rand(ctx):
    pass


@rand.command()
@click.option("--pre-sort/--no-pre-sort", default=True)
@click.option("--show-code/--no-show-code", default=True)
@click.option("-s", "--numpy-seed", type=int)
@click.option("--pretty/--no-pretty", default=True)
@click.pass_context
def perm(ctx, pre_sort, show_code, numpy_seed, pretty):
    pre_names = ctx.obj["lines"]
    names = sorted(set(pre_names)) if pre_sort else pre_names
    if numpy_seed is None:
        numpy_seed = np.random.randint(low=0, high=2**32)
    logging.warning(f'numpy_seed="{numpy_seed}"')
    np.random.seed(numpy_seed)
    names = np.random.permutation(names)
    if show_code:
        code = (
            ctx.obj["jinja_env"]
            .get_template("rand_perm_code.jinja.py")
            .render(
                {
                    "numpy_seed": numpy_seed,
                    "pre_names": pre_names,
                    "pre_sort": pre_sort,
                    "res": names,
                }
            )
        )
        code = black.format_str(code, mode=black.Mode())
        logging.warning(f"code:\n```py\n{code}```")
    if pretty:
        click.echo("\n".join(map(lambda x: f"* {x}", names)))
    else:
        click.echo(names)


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    stdin_lines_stats()
