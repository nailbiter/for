#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/tester.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2024-10-17T20:30:25.777598
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import json5
import tqdm
import subprocess


@click.command()
@click.option("-a", "--application-path", type=click.Path(), required=True)
@click.option("-t", "--test-file", type=click.Path(allow_dash=True), required=True)
def tester(application_path, test_file):
    with click.open_file(test_file) as f:
        tests = json5.load(f)
    for test in tqdm.tqdm(tests):
        in_ = test["in"]
        cmd = f'echo "{in_}" | {application_path}'
        logging.warning(f"> {cmd}")
        ec, out = subprocess.getstatusoutput(cmd)
        assert ec == 0, (cmd, ec, out)
        assert out.strip() == str(test["out"]), (out.strip(), str(test["out"]), test)


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    tester()
