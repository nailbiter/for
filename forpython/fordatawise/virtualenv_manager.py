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

from _virtualenv_manager import system, get_package_name_manager
import click
import logging
from re import match
from subprocess import getoutput


@click.group()
@click.option("--debug/--no-debug", default=True)
def virtualenv_manager(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

@virtualenv_manager.command()
def add_kernel():
    pwd = getoutput("pwd")
    pwd = pwd.replace("/", ".").strip(".")
    # Kernel names can only contain ASCII letters and numbers and these separators: - . _ (hyphen, period, and underscore).
    assert match(r"^[a-zA-Z0-9._-]+$", pwd) is not None
    print(f"pwd: {pwd}")
    system(f"pip install ipykernel")
    system(f"ipython kernel install --user --name={pwd}")




@virtualenv_manager.command()
@click.argument("package_name")
@click.option("--save/--no-save", default=True)
@click.option("-v", "--version")
@click.option("-r","--reinstall", is_flag=True)
def install(package_name, save, version, reinstall=False):
    package_name_manager = get_package_name_manager(package_name, version)
    if reinstall:
        package_name_manager.uninstall()
    package_name_manager.install()
    if save:
        package_name_manager.save()


if __name__ == "__main__":
    virtualenv_manager()
