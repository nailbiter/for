#!/usr/bin/env python3
"""===============================================================================

        FILE: pis.py

       USAGE: ./pis.py

 DESCRIPTION: `pip install` and `save` functionality

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-10-28T14:45:42.637124
    REVISION: ---

==============================================================================="""

from os import system
import click


@click.command()
@click.argument("package_name")
def pis(package_name):
    pip3 = "./venv/bin/pip3"
    system(f"{pip3} install {package_name}")
    system(f"touch requirements.txt")
    system(f"{pip3} freeze | grep -i {package_name} >> requirements.txt")
    print(f"added {package_name}")


if __name__ == "__main__":
    pis()
