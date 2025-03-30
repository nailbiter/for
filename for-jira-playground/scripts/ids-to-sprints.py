#!/usr/local/anaconda3/envs/base-with-altp/bin/python
"""===============================================================================

        FILE: /Users/nailbiter/for/for-jira-playground/scripts/ids-to-sprints.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-30T16:13:22.328504
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import subprocess
import json
import pandas as pd
from pymongo import MongoClient
import tqdm
import operator


@click.command()
def ids_to_sprints():
    outs = []
    for i in tqdm.trange(0, 200, 100):
        ec, out = subprocess.getstatusoutput(
            f"""jira-cli.py api jql -s {i} -m 100 -j 'project = ML3 AND status IN ("To Do", "In Progress") AND sprint != empty ORDER BY created DESC' -o json 2>/dev/null"""
        )
        out = out.removeprefix("WARNING:root:")
        # logging.warning(out)
        assert ec == 0, ec
        outs.append(pd.DataFrame(json.loads(out)))
    df = pd.concat(outs)
    df = (
        pd.concat(
            df["fields"]
            .apply(operator.methodcaller("get", "customfield_10020", []))
            .apply(pd.DataFrame)
            .to_dict()
        )
        .reset_index()[["id", "name"]]
        .drop_duplicates()
    )
    df.set_index("name", inplace=True)
    df.sort_index(inplace=True)

    click.echo(df.to_string())
    # logging.warning("\n" + str(df))


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    ids_to_sprints()
