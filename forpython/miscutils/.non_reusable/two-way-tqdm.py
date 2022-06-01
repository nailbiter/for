#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/.non_reusable/two-way-tqdm.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-08-15T16:17:05.153377
    REVISION: ---

==============================================================================="""

import click
import sys
import re
import pandas as pd
import tqdm
import readline
import time
from datetime import datetime


class _TqdmUpdater:
    def __init__(self, pbar, lines_df):
        self._pbar = pbar
        self._lines_df = lines_df
        self._index = 0
        self(0)

    def __call__(self, inc):
        self._pbar.update(
            sum((-1 if inc < 0 else 1)*self._lines_df.weight.iloc[min(self._index, self._index+inc):max(self._index, self._index+inc)]))
        self._index += inc
        assert self._index>=0
        if self._index < len(self._lines_df):
            self._pbar.set_description(
                self._lines_df.description.iloc[self._index])
        if inc != 0:
            click.echo(datetime.now().strftime("%H:%M:%S"))

    def is_should_continue(self):
        return self._index < len(self._lines_df)


@click.command()
@click.option("-p", "--pattern", default=r"(?P<description>.*[^\d])(?P<weight>\d+) min")
@click.option("-f", "--stdout-file", type=click.Path(), required=True)
def two_way_tqdm(pattern, stdout_file):
    with open(stdout_file) as f:
        lines = f.readlines()
#    click.echo(lines)
    lines = map(lambda s: s.strip(), lines)
    lines = filter(lambda s: len(s) > 0, lines)

    pattern = re.compile(pattern)
    lines = map(pattern.match, lines)
    lines = filter(lambda m: m is not None, lines)
    lines = map(lambda m: {"description": m.group(
        "description"), "weight": float(m.group("weight"))}, lines)
    lines_df = pd.DataFrame(list(lines))
    click.echo(lines_df)

    updater = _TqdmUpdater(tqdm.tqdm(total=lines_df.weight.sum()), lines_df)
    while updater.is_should_continue():
        line = input("(+/-)> ").strip()
        click.echo(f"line: \"{line}\"")

        if line == "+":
            updater(1)
        elif line == "-":
            updater(-1)
        else:
            click.echo("only \"+\" or \"-\", please")


if __name__ == "__main__":
    two_way_tqdm()
