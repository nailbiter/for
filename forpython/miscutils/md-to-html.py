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

@click.command()
@click.option("-i","--input-file",type=click.Path())
@click.option("-o","--output-file",type=click.Path())
def md_to_html(input_file,output_file):
    if input_file is None:
        input_file = "README.md"
    if output_file is None:
        output_file = f"{splitext(input_file)[0]}.html"
    system(f"pandoc -s --css=$HOME/for/misc/formarkdown.css  -V lang=en {input_file}  -o {output_file}")
    print(f"output saved to {output_file}")


if __name__=="__main__":
    md_to_html()
