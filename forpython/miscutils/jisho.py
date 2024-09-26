#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/jisho.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/jisho.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2024-09-26T19:51:31.117737
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import tqdm
import requests
import json
import functools


def mylog(*args, is_debug: bool = False, **kwargs):
    return (logging.warning if is_debug else logging.info)(*args, **kwargs)


@click.command()
@click.option("-f", "--lines-file", type=click.Path(allow_dash=True))
@click.option("--debug/--no-debug", "-d/ ", default=False)
def jisho(lines_file, debug):
    """
    based on the API mentioned in
    https://jisho.org/forum/54fefc1f6e73340b1f160000-is-there-any-kind-of-search-api
    """
    _mylog = functools.partial(mylog, is_debug=debug)
    with click.open_file(lines_file) as f:
        lines = f.read().strip().split("\n")
    logging.warning(lines)
    for i, word in tqdm.tqdm(list(enumerate(lines))):
        if i > 0:
            click.echo("\n\n")
        url = f"https://jisho.org/api/v1/search/words?keyword={word}"
        response = requests.request("GET", url, headers={"Accept": "application/json"})
        _mylog(response.text)
        response = json.loads(response.text)
        click.echo(
            "\n".join(
                [
                    "; ".join(
                        [
                            f"({japanese['reading']}) "
                            + ", ".join(sense["english_definitions"])
                            for sense, japanese in zip(data["senses"], data["japanese"])
                        ]
                    )
                    for data in response["data"]
                ]
            )
        )


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    jisho()
