#!/usr/bin/env python3
"""===============================================================================

        FILE: process-dockerfile.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-04-16T11:48:35.357546
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging
from jinja2 import Template, FileSystemLoader

@click.command()
@click.option("-dockerfile-template",type=click.Path(),default="Dockerfile.jinja")
@click.option("-dockerfile-out",type=click.Path(),default="Dockerfile")
def process_dockerfile(dockerfile_template,dockerfile_out):
    pass

if __name__=="__main__":
#    if path.isfile(".env"):
#        logging.warning("loading .env")
#        load_dotenv()
    process_dockerfile()
