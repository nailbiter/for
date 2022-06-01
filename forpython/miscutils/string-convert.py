#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/string-convert.py

       USAGE: ./miscutils/string-convert.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-24T11:35:39.800620
    REVISION: ---

==============================================================================="""

import click
import sys

_ENCODERS_DECODERS = {
    "space-separated": {
        "from": lambda s: s.split(" "),
        "to": " ".join
    },
    "kebab-case": {
        "from": lambda s: s.split("-"),
        "to": "-".join
    }
}


@click.command()
@click.option("-w", "--what")
@click.option("-f", "--from-format", type=click.Choice(list(_ENCODERS_DECODERS)), default=list(_ENCODERS_DECODERS)[0])
@click.option("-t", "--to-format", type=click.Choice(list(_ENCODERS_DECODERS)), default=list(_ENCODERS_DECODERS)[0])
def string_convert(what, from_format, to_format):
    if what is None:
        what = sys.stdin.read()
    print(_ENCODERS_DECODERS[to_format]["to"](_ENCODERS_DECODERS[from_format]["from"](what)))    


if __name__ == "__main__":
    string_convert()
