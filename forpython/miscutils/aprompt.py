#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/aprompt.py

       USAGE: .//Users/nailbiter/for/forpython/aprompt.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-01-26T12:50:30.958685
    REVISION: ---

TODO:
    1. 
==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import functools

moption = functools.partial(click.option, show_default=True, show_envvar=True)
AVAILABLE_TEMPLATE_FORMATS = ["jinja2", "string_template"]


@click.command()
@moption(
    "--logging-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.log.sqlite3")),
)
@moption(
    "--cache-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.cache.sqlite3")),
)
@moption(
    "--templates-dir",
    type=click.Path(exists=True, dir_okay=True, file_okay=False),
)
@moption(
    "-t",
    "--template-filename",
    type=click.Path(),
    required=True,
    help="relative if `--templates-dir` is given",
)
@moption("-p", "--param", "params", multiple=True, type=(str, str))
@moption(
    "--template-format",
    type=click.Choice([*AVAILABLE_TEMPLATE_FORMATS, "auto"]),
    default="auto",
)
@moption(
    "-P", "--post-processor", "post_processors", multiple=True, type=click.Choice([])
)
@moption(
    "-E", "--prompt-engine", type=click.Choice(["gemini", "chatgpt"]), required=True
)
@moption("-T", "--engine-access-token", required=True)
def aprompt(
    logging_config,
    prompt_engine,
    cache_config,
    templates_dir,
    params,
    template_filename,
    template_format,
    post_processors,
    engine_access_token,
):
    if templates_dir is None:
        templates_dir, _ = path.split(template_filename)
    else:
        template_filename = path.join(templates_dir, template_filename)
    if template_format == "auto":
        ## FIXME: fragile (but works for now)
        i = template_filename.index(".")
        ext = template_filename[i:]
        logging.warning(dict(ext=ext))
        template_format = {".jinja.txt": "jinja2", ".txt": "string_template"}[ext]
        assert template_format in AVAILABLE_TEMPLATE_FORMATS, (
            template_format,
            AVAILABLE_TEMPLATE_FORMATS,
        )
    logging.warning(
        dict(
            templates_dir=templates_dir,
            template_filename=template_filename,
            template_format=template_format,
        )
    )


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    aprompt(auto_envvar_prefix="APROMPT")
