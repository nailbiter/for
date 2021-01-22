#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/tsv-to-md.py

       USAGE: .//Users/nailbiter/for/forpython/miscutils/tsv-to-md.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (nailbiter@dtws-work.in)
ORGANIZATION: Datawise Inc.
     VERSION: ---
     CREATED: 2021-01-22T10:56:40.601200
    REVISION: ---

==============================================================================="""

import click
import sys
import pandas as pd
import tempfile
import uuid
import os
import logging

_READ_CSV_KWARGS = {
    "engine": "python"
}


@click.command()
@click.option("-i", "--input-file", type=click.Path())
@click.option("--pbcopy/--no-pbcopy", default=False)
@click.option("-s", "--separator", default="\t")
@click.option("--debug/--no-debug", default=False)
def tsv_to_md(input_file, separator, pbcopy, debug):
    if debug:
        logging.basicConfig(level=logging.INFO)
    logging.info(f"sep: \"{separator}\"")
    if input_file is None:
        with tempfile.TemporaryFile() as f:
            f.write(sys.stdin.read().encode("utf-8"))
            f.seek(0)
            df = pd.read_csv(f, sep=separator, **_READ_CSV_KWARGS)
    else:
        df = pd.read_csv(input_file, sep=separator, **_READ_CSV_KWARGS)

    logging.info(df)
    output = df.to_markdown(index=None)
    print(output)
    if pbcopy:
        tmp_fn = f"/tmp/{uuid.uuid4()}.md"
        with open(tmp_fn, "w") as f:
            f.write(output)
        os.system(f"cat {tmp_fn}|pbcopy")


if __name__ == "__main__":
    tsv_to_md()
