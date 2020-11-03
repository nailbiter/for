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
from subprocess import getoutput


@click.group()
@click.option("--debug/--no-debug", default=True)
def virtualenv_manager(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


def _system(cmd):
    _logger = logging.getLogger("_system")
    _logger.info(f"> {cmd}")
    system(cmd)


@virtualenv_manager.command()
def add_kernel():
    pwd = getoutput("pwd")
    pwd = pwd.replace("/", ".").strip(".")
    # Kernel names can only contain ASCII letters and numbers and these separators: - . _ (hyphen, period, and underscore).
    assert match(r"^[a-zA-Z0-9._-]+$", pwd) is not None
    print(f"pwd: {pwd}")
    _system(f"pip install ipykernel")
    _system(f"ipython kernel install --user --name={pwd}")


_PIP3 = "./venv/bin/pip3"
@virtualenv_manager.command()
@click.argument("package_name")
@click.option("--save/--no-save", default=True)
@click.option("-v","--version")
def install(package_name, save, version):
    # if match(r"https://github.com/[^/]+/[^/]+/",package_name) is not None:
    if package_name.startswith("https://github.com"):
        _MODE = "github"
    else:
        _MODE = "usual"
    if _MODE == "github":
        package_name = package_name[len("https:"):]
        package_name = f"git+https:{package_name}"
    if version is not None:
        package_name = f"{package_name}@{version}"
    _system(f"{_PIP3} install {package_name}")
    if save:
        _system(f"touch requirements.txt")
        if _MODE == "github":
            _system(f"echo \"{package_name}\" >> requirements.txt")
        else:
            # FIXME: this can be done more robustly
            _system(
                f"{_PIP3} freeze | grep -i \"{package_name}\" >> requirements.txt")
        print(f"added \"{package_name}\"")

@virtualenv_manager.command()
@click.argument("package_name")
@click.argument("version")
def reinstall(package_name,version):
    #FIXME: not only github and clean error
    _pn = package_name.split("/")[-1] #FIXME
    _system(f"{_PIP3} uninstall -y {_pn}")
    _system(f"{_PIP3} install git+{package_name}@{version}")
    _system(f"echo 'git+{package_name}@{version}' >> requirements.txt")
    #FIXME: auto-add to requirements.txt if `--save`


if __name__ == "__main__":
    virtualenv_manager()
