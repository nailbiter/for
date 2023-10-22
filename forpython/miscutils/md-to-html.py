#!/usr/bin/env python3
"""===============================================================================

        FILE: md_to_html.py

       USAGE: ./md_to_html.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-12T13:09:09.831696
    REVISION: ---

==============================================================================="""

import click
from os.path import splitext, join
from os import system
import markdown
import logging
import uuid


@click.command()
@click.option("-i", "--input-file", type=click.Path(allow_dash=True))
@click.option("-o", "--output-file", type=click.Path())
@click.option("--open-file/--no-open-file", "-p/ ", default=False)
def md_to_html(input_file, output_file, open_file):
    if input_file is None:
        input_file = "README.md"
    if output_file is None:
        output_file = (
            f"/tmp/{uuid.uuid4()}.html"
            if input_file == "-"
            else f"{splitext(input_file)[0]}.html"
        )
    logging.warning(dict(input_file=input_file, output_file=output_file))

    # system(
    #     f"pandoc -s --css=$HOME/for/misc/formarkdown.css  -V lang=en {input_file}  -o {output_file}"
    # )
    # print(f"output saved to {output_file}")
    with click.open_file(input_file) as f:
        md = f.read()
    with open(output_file, "w") as f:
        f.write(markdown.markdown(md))

    logging.warning(f'of: "{output_file}"')
    if open_file:
        system(f'open "{output_file}"')


if __name__ == "__main__":
    md_to_html()
