#!/usr/bin/env python3
"""===============================================================================

        FILE: {{filename}}

       USAGE: {%if is_executable%}./{{filename}}{%else%}(not intended to be directly executed){%endif%}

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev ({{email}})
ORGANIZATION: {{organization}}
     VERSION: ---{#0.0.1#}
     CREATED: {{now.isoformat()}}
    REVISION: ---

==============================================================================="""
{%-set basename = os.path.splitext(os.path.split(filename)[-1])[0]|replace('-','_')-%}
{%-set basename = ("s_"+basename) if basename[0] in "0123456789" else basename%}

import click
#from dotenv import load_dotenv
import os
from os import path
import logging

@click.command()
def {{basename}}():
    pass

if __name__=="__main__":
#    if path.isfile(".env"):
#        logging.warning("loading .env")
#        load_dotenv()
    {{basename}}()
