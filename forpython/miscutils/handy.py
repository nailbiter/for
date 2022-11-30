#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/.non_reusable/handy-japanese.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/.non_reusable/handy-japanese.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-07-26T12:16:39.150834
    REVISION: ---

==============================================================================="""

import click
from dotenv import load_dotenv
from os import path
import json
import logging

aux_dict_fn = path.join(path.dirname(path.abspath(__file__)), ".handy_aux_dict.json")
aux_dict = {}
if path.isfile(aux_dict_fn):
    logging.warning(f'loading "{aux_dict_fn}"')
    with open(aux_dict_fn) as f:
        aux_dict = json.load(f)


@click.group()
def handy():
    pass


@handy.command()
@click.argument(
    "sentence",
    type=click.Choice(
        [
            "thumbs_up_small thumbs_up_big middle_finger".split(),
            *aux_dict.get("ascii_art", {}).keys(),
        ]
    ),
)
@click.option("-c", "--column-width", type=int)
def ascii_art(sentence, column_width):
    res = {
        "middle_finger": """
F    .-.             
     |U|             
     | |             
     | |             
    _| |_            
   | | | |-.         
  /|     ` |         
 | |       |         
 |         |         
 \         /         
  |       |               
  |       |        
        """,
        "thumbs_up_small": """
╱╱┏╮
╱╱┃┃
▉━╯┗━╮
▉┈┈┈┈┃
▉╮┈┈┈┃
╱╰━━━╯        
        """,
        "thumbs_up_big": """
★░░░░░░░░░░░████░░░░░░░░░░░░░░░░░░░░★
★░░░░░░░░░███░██░░░░░░░░░░░░░░░░░░░░★
★░░░░░░░░░██░░░█░░░░░░░░░░░░░░░░░░░░★
★░░░░░░░░░██░░░██░░░░░░░░░░░░░░░░░░░★
★░░░░░░░░░░██░░░███░░░░░░░░░░░░░░░░░★
★░░░░░░░░░░░██░░░░██░░░░░░░░░░░░░░░░★
★░░░░░░░░░░░██░░░░░███░░░░░░░░░░░░░░★
★░░░░░░░░░░░░██░░░░░░██░░░░░░░░░░░░░★
★░░░░░░░███████░░░░░░░██░░░░░░░░░░░░★
★░░░░█████░░░░░░░░░░░░░░███░██░░░░░░★
★░░░██░░░░░████░░░░░░░░░░██████░░░░░★
★░░░██░░████░░███░░░░░░░░░░░░░██░░░░★
★░░░██░░░░░░░░███░░░░░░░░░░░░░██░░░░★
★░░░░██████████░███░░░░░░░░░░░██░░░░★
★░░░░██░░░░░░░░████░░░░░░░░░░░██░░░░★
★░░░░███████████░░██░░░░░░░░░░██░░░░★
★░░░░░░██░░░░░░░████░░░░░██████░░░░░★
★░░░░░░██████████░██░░░░███░██░░░░░░★
★░░░░░░░░░██░░░░░████░███░░░░░░░░░░░★
★░░░░░░░░░█████████████░░░░░░░░░░░░░★
★░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░★
        """,
        **aux_dict.get("ascii_art", {}),
    }[sentence]
    res = res.strip()
    if column_width is not None:
        lines = res.split("\n")
        lines = [line.ljust(column_width, " ") for line in lines]
        res = "\n".join(lines)
    click.echo(res)


_CONSTS = {
    "emoji": {
        # https://emojipedia.org/backhand-index-pointing-up/
        "point_up": """👆""",
        "point_down": """👇""",
        # https://emojipedia.org/backhand-index-pointing-left/
        "point_left": """👈""",
        # https://emojipedia.org/backhand-index-pointing-right/
        "point_right": """👉""",
        "bow": "🙇",
        # https://www.compart.com/en/unicode/U+2208
        "in": "∈",
        "infty": "∞",
        # https://unicode-table.com/jp/1F926/
        "facepalm": "🤦",
        # https://unicode-table.com/en/222A/
        "union": "∪",
        # https://www.compart.com/en/unicode/U+2229
        "intersection": "∩",
        # https://www.fileformat.info/info/unicode/char/2234/index.htm
        "therefore": "∴",
        # https://www.compart.com/en/unicode/U+2235
        "because": "∵",
        **aux_dict.get("emoji", {}),
    }
}


@handy.command()
@click.argument("sentence", type=click.Choice(list(_CONSTS["emoji"])))
def emoji(sentence):
    # https://graphemica.com/%F0%9F%91%86
    click.echo(_CONSTS["emoji"][sentence])


@handy.command(name="jap")
@click.argument(
    "sentence",
    type=click.Choice(
        [
            *"sorry_to_bother".split(),
            *aux_dict.get("jap", {}),
        ]
    ),
)
def japanese(sentence):
    click.echo(
        {
            "sorry_to_bother": """お忙しいところ恐縮ですが、""",
            **aux_dict.get("jap", {}),
        }[sentence]
    )


if __name__ == "__main__":
    #    env_fn = path.join(path.dirname(path.abspath(__file__)), ".handy.env")
    #    if path.isfile(env_fn):
    #        logging.warning(f'loading "{env_fn}"')
    #        load_dotenv(dotenv_path=env_fn)
    handy()
