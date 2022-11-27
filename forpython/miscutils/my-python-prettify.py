#!/usr/bin/env python3
"""===============================================================================

        FILE: my-python-prettify.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-11-27T16:46:43.979932
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
from jinja2 import Template
import subprocess
import json


@click.command()
@click.option(
    "-f",
    "--input-file",
    type=click.Path(exists=True, file_okay=True, dir_okay=False),
    required=True,
)
@click.option(
    "--prettify-command-template",
    default="time /usr/local/bin/python3 -m autopep8 -i {{input_file}}",
)
@click.option("--max-iter", type=int, default=50)
def my_python_prettify(input_file, prettify_command_template, max_iter):
    input_file = path.abspath(input_file)
    logging.warning((input_file, prettify_command_template))

    dirname = input_file
    for _ in range(10):
        dirname, _ = path.split(dirname)

        logging.warning(dirname)
        prettify_config_fn = path.join(dirname, ".my_python_prettify_config.json")
        if path.isfile(prettify_config_fn):
            with open(prettify_config_fn) as f:
                prettify_command_template = json.load(f)["prettify_command_template"]
            break

        if dirname == "/":
            break

    logging.warning((input_file, prettify_command_template))
    os.system(Template(prettify_command_template).render({"input_file": input_file}))


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    my_python_prettify()
