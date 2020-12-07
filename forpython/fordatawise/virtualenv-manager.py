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
import json
from os.path import abspath


@click.group()
@click.option("--debug/--no-debug", default=True)
def virtualenv_manager(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


@virtualenv_manager.command()
@click.option("--save/--no-save", default=True)
@click.option("--dry-run/--no-dry-run", default=False)
def add_kernel(save, dry_run):
    pwd = getoutput("pwd")
    kernel_name = pwd.replace("/", ".").strip(".").lower()
    # Kernel names can only contain ASCII letters and numbers and these separators: - . _ (hyphen, period, and underscore).
    assert match(r"^[a-zA-Z0-9._-]+$", kernel_name) is not None
    print(f"kernel_name: {kernel_name}")
    system(f"pip install ipykernel", dry_run=dry_run)
    system(
        f"ipython kernel install --user --name=\"{kernel_name}\"", dry_run=dry_run)
    if save:
        kernel_json_fn = ".kernel.json"
        with open(kernel_json_fn, "w") as f:
            json.dump({"directory": pwd, "kernel_name": kernel_name},
                      f, indent=2, sort_keys=True)
        print(f"kernel data saved to {kernel_json_fn}")


@virtualenv_manager.command()
@click.argument("package_name")
@click.option("--save/--no-save", default=True)
@click.option("-v", "--version")
@click.option("-r", "--reinstall", is_flag=True)
def install(package_name, save, version, reinstall=False):
    package_name_manager = get_package_name_manager(package_name, version)
    if reinstall:
        package_name_manager.uninstall()
    package_name_manager.install()
    if save:
        package_name_manager.save()


if __name__ == "__main__":
    virtualenv_manager()
