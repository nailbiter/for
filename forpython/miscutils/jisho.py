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
import pandas as pd
import itertools
import more_itertools


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
@click.option("-h", "--head", type=int)
def jisho(lines_file, debug, kana, record_separator, cache_file, head):
    """
    based on the API mentioned in
    https://jisho.org/forum/54fefc1f6e73340b1f160000-is-there-any-kind-of-search-api
    """
    logging.warning(f"cache_file: {cache_file}")
    _mylog = functools.partial(mylog, is_debug=debug)
    _cached_url_request = functools.partial(cached_url_request, cache_file=cache_file)

    with click.open_file(lines_file) as f:
        lines = f.read().strip().split("\n")
    logging.warning(lines)
    for i, word in tqdm.tqdm((enumerate(lines)), total=len(lines)):
        split = word.split("\t")
        if len(split) == 1:
            (word,) = split
            response = _cached_url_request(
                f"https://jisho.org/api/v1/search/words?keyword={word}"
            )
            _mylog(response)
            response = json.loads(response)
            click.echo(
                record_separator.join(
                    [
                        "; ".join(
                            [
                                (f"({japanese.get('reading','')}) " if kana else "")
                                + ", ".join(sense["english_definitions"])
                                for sense, japanese in zip(
                                    data["senses"], data["japanese"]
                                )
                            ]
                        )
                        for data in itertools.islice(response["data"], head)
                    ]
                )
            )
            # if i + 1 < len(lines):
            #     click.echo("")
        elif len(split) == 2:
            word, hiragana = split
            response = _cached_url_request(
                f"https://jisho.org/api/v1/search/words?keyword={word}"
            )
            _mylog(response)
            response = json.loads(response)
            df_parsed_jisho_response = parse_jisho_response(response)
            _mylog(df_parsed_jisho_response)
            s = df_parsed_jisho_response["hiragana"].eq(
                hiragana
            ) & df_parsed_jisho_response["japanese"].eq(word)
            if s.any():
                df_parsed_jisho_response = df_parsed_jisho_response[s]
                _mylog(df_parsed_jisho_response)
                click.echo("; ".join(df_parsed_jisho_response["english"]))
            else:
                logging.warning(
                    f"""nothing matched "{hiragana}" in {df_parsed_jisho_response["hiragana"].value_counts().to_dict()}"""
                )
                click.echo(
                    "; ".join(
                        [
                            f"({h}) {e}"
                            for e, h in df_parsed_jisho_response[
                                ["english", "hiragana"]
                            ].values
                        ]
                    )
                )
        else:
            raise NotImplementedError(dict(split=split))


def parse_jisho_response(response: dict) -> pd.DataFrame:
    dfs = [
        pd.DataFrame(
            [
                {
                    "japanese": jap.get("word", jap.get("reading")),
                    "hiragana": jap.get("reading"),
                    "english": "; ".join(sense["english_definitions"]),
                }
                for jap, sense in zip(data["japanese"], data["senses"])
            ]
        )
        for data in response["data"]
    ]
    return (
        pd.concat(dfs)
        if len(dfs) > 0
        else pd.DataFrame(columns=["japanese", "hiragana", "english"])
    )


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    jisho()
