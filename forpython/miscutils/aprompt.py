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

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import functools

moption = functools.partial(click.option)


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
@moption("-t", "--template", type=str, required=True)
@moption("-p", "--param", "params", multiple=True, type=(str, str))
@moption(
    "--template-format",
    type=click.Choice(["jinja2", "string_template", "auto"]),
    default="auto",
)
@moption(
    "-P", "--post-processor", "post_processors", multiple=True, type=click.Choice([])
)
@moption(
    "-E", "--prompt-engine", type=click.Choice(["gemini", "chatgpt"]), required=True
)
def aprompt(
    logging_config,
    prompt_engine,
    cache_config,
    templates_dir,
    params,
    template,
    template_format,
    post_processors,
):
    pass


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    aprompt()
