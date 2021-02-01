#!/usr/bin/env python3
"""===============================================================================

        FILE: pip3-install.py

       USAGE: ./pip3-install.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-31T12:17:38.025664
    REVISION: ---

==============================================================================="""

import click

@click.command()
@click.argument("pkg_name")
@click.option("--save/--no-save",default=False)
@click.option("--dev-save/--no-dev-save",default=False)
@click.option("--db-file-name",type=click.Path(),default="pip3_install.db")
@click.option("--dev-requirements-file-name",type=click.Path(),default="requirements.txt")
@click.option("--requirements-file-name",type=click.Path(),default="runtime_requirements.txt")
@click.option("--dev-save-exact-version/--no-dev-save-exact-version",default=True)
@click.option("--save-exact-version/--no-save-exact-version",default=True)
def pip3_install(pkg_name,db_file_name,**kwargs):
    pass

if __name__=="__main__":
    pip3_install()
