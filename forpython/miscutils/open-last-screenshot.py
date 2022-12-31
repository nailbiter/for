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

import logging
import operator
import os
from datetime import datetime, timedelta
from os import path

import click
import pandas as pd
from dotenv import load_dotenv


@click.command()
@click.option("--screenshot-folder", type=click.Path(), show_envvar=True, required=True)
@click.option("-i", "--index", type=int, default=1)
def open_last_screenshot(screenshot_folder, index):
    logging.warning(screenshot_folder)
    df = pd.DataFrame({"file_name": os.listdir(screenshot_folder)})
    df["file_name"] = df["file_name"].apply(lambda x: path.join(screenshot_folder, x))
    df["created_date"] = (
        df["file_name"].apply(os.path.getctime).apply(datetime.fromtimestamp)
    )
    df.sort_values(by="created_date", inplace=True, ignore_index=True)
    df = df[df.file_name.str.endswith(".png")]
    #    click.echo(df)
    fn = df.file_name.iloc[-index]
    logging.warning((fn,))
    os.system(f'open "{fn}"')


if __name__ == "__main__":
    env_fn = path.join(path.dirname(__file__), ".open_last_screenshot.env")
    #    logging.warning(env_fn)
    if path.isfile(env_fn):
        logging.warning(f'loading "{env_fn}"')
        load_dotenv(dotenv_path=env_fn)
    open_last_screenshot(auto_envvar_prefix="OPEN_LAST_SCREENSHOT")
