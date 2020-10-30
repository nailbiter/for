#!/usr/bin/env python3
"""===============================================================================

        FILE: virtualenv_manager.py

       USAGE: ./virtualenv_manager.py

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
import logging
from re import match


@click.group()
@click.option("--debug/--no-debug",default=True)
def virtualenv_manager(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

def _system(cmd):
    _logger = logging.getLogger("_system")
    _logger.info(f"> {cmd}")
    system(cmd)


@virtualenv_manager.command()
@click.argument("package_name")
@click.option("--save/--no-save",default=True)
def install(package_name,save):
    pip3 = "./venv/bin/pip3"
    #if match(r"https://github.com/[^/]+/[^/]+/",package_name) is not None:
    if package_name.startswith("https://github.com"):
        _MODE = "github"
    else:
        _MODE = "usual"
    if _MODE=="github":
        package_name = package_name[len("https:"):]
        package_name = f"git+https:{package_name}"
    _system(f"{pip3} install {package_name}")
    if save:
        _system(f"touch requirements.txt")
        if _MODE=="github":
            _system(f"echo \"{package_name}\" >> requirements.txt")
        else:
            #FIXME: this can be done more robustly
            _system(f"{pip3} freeze | grep -i \"{package_name}\" >> requirements.txt")
        print(f"added \"{package_name}\"")


if __name__ == "__main__":
    virtualenv_manager()
