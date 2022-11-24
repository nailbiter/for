#!/usr/bin/env python3
"""===============================================================================

        FILE: open-last-screenshot.py

       USAGE: ./open-last-screenshot.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-11-24T13:49:17.200559
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging


@click.command()
@click.option("--screenshot-folder", type=click.Path(), show_envvar=True)
def open_last_screenshot(screenshot_folder):
    pass


if __name__ == "__main__":
    env_fn = path.join(path.dirname(__file__), ".open_last_screenshot.env")
#    logging.warning(env_fn)
    if path.isfile(env_fn):
        logging.warning(f"loading \"{env_fn}\"")
        load_dotenv(dotenv_path=env_fn)
    open_last_screenshot(auto_envvar_prefix='OPEN_LAST_SCREENSHOT')
