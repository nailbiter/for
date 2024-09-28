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
import typing


def mylog(*args, is_debug: bool = False, **kwargs):
    return (logging.warning if is_debug else logging.info)(*args, **kwargs)


def cached_url_request(url: str, cache_file: typing.Optional[str] = None) -> str:
    # requests.request("GET", url, headers={"Accept": "application/json"})
    cache = {}
    if cache_file is not None and path.isfile(cache_file):
        with open(cache_file) as f:
            cache = json.load(f)
    if url in cache:
        res = cache[url]
    else:
        response = requests.request("GET", url, headers={"Accept": "application/json"})
        res = response.text
        cache[url] = res
        if cache_file is not None:
            with open(cache_file, "w") as f:
                json.dump(cache, f, indent=2, sort_keys=True)
    return res


@click.command()
@click.option("-f", "--lines-file", type=click.Path(allow_dash=True))
@click.option("--debug/--no-debug", "-d/ ", default=False)
@click.option("--kana/--no-kana", " /-K", default=True)
@click.option("--record-separator", "-s", default="\n")
@click.option(
    "-c",
    "--cache-file",
    envvar="JISHO_SCRIPT_CACHE_FILE",
    type=click.Path(),
    show_envvar=True,
)
def jisho(lines_file, debug, kana, record_separator, cache_file):
    """
    based on the API mentioned in
    https://jisho.org/forum/54fefc1f6e73340b1f160000-is-there-any-kind-of-search-api
    """
    _mylog = functools.partial(mylog, is_debug=debug)
    _cached_url_request = functools.partial(cached_url_request, cache_file=cache_file)

    with click.open_file(lines_file) as f:
        lines = f.read().strip().split("\n")
    logging.warning(lines)
    for i, word in tqdm.tqdm(list(enumerate(lines))):
        if i > 0:
            click.echo("")
        url = f"https://jisho.org/api/v1/search/words?keyword={word}"
        response = _cached_url_request(url)
        _mylog(response)
        response = json.loads(response)
        click.echo(
            record_separator.join(
                [
                    "; ".join(
                        [
                            (f"({japanese.get('reading','')}) " if kana else "")
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
