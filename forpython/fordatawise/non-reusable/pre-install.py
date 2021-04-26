#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/non-reusable/pre-install.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-04-26T14:45:25.003559
    REVISION: ---

==============================================================================="""

import click
import re
import sqlite3
import pandas as pd
from datetime import datetime, timedelta
from subprocess import getoutput
import sys
import logging


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@click.group()
@click.option("--database-fn", type=click.Path(), envvar="PRE_INSTALL__DATABASE_FN", default=".pre_install.db")
@click.option("--debug/--no-debug", default=True)
@click.pass_context
def pre_install(ctx, debug, **kwargs):
    ctx.ensure_object(dict)
    if debug:
        logging.basicConfig(level=logging.INFO)
    ctx.obj["kwargs"] = kwargs


@_add_logger
def _install(requirement, database_fn, freeze_output, logger=None):
    m = re.match(r"(?P<package_name>.*)@(?P<tag>.*)", requirement)
    if m is not None:
        lines = [line for line in freeze_output if m.group(
            "package_name") in line]
        assert len(lines) <= 1
        if len(lines) >= 1:
            line = lines[0]
            line = _package_name_to_hash(line, m.group("package_name"))
            click.echo(
                f"{m.group('package_name')}: {m.group('tag')} => \"{line}\"")
            conn = sqlite3.connect(database_fn)
            r = {"package_name": m.group("package_name"), "tag": m.group("tag"), "hash": line, "datetime": datetime.now(
            ).strftime("%Y-%m-%d %H:%M:%S")}
            logger.info(f"inserting {r}")
            # FIXME: omit inserting same records again and again
            pd.DataFrame([r]).to_sql("hashes", conn,
                                     if_exists="append", index=None)
            conn.close()


def _package_name_to_hash(line, package_name):
    line = line[line.index(package_name)+len(package_name):].strip()
    if line.startswith("@"):
        line = line[1:].lstrip()
    return line


@pre_install.command()
@click.option("-r", "--requirement", type=click.Path())
@click.argument("package_name", nargs=-1)
@click.pass_context
def install(ctx, requirement, package_name):
    _freeze_output = getoutput("pip3 freeze")
    _freeze_output = [line.strip() for line in _freeze_output.split("\n")]
#    click.echo(f"freeze: {_freeze_output}")
    for package_name_ in package_name:
        _install(package_name_, ctx.obj["kwargs"]
                 ["database_fn"], _freeze_output)
    if requirement is not None:
        with open(requirement) as f:
            lines = [line.strip() for line in f.readlines()]
        for line in lines:
            _install(line, ctx.obj["kwargs"]["database_fn"], _freeze_output)


def _get_saved_packages(database_fn):
    conn = sqlite3.connect(database_fn)
    saved_packages = pd.read_sql_query(
        "select * from (select package_name,tag,max(datetime) datetime from hashes group by package_name,tag) left join hashes using (package_name,tag,datetime)", conn)
    conn.close()
    return saved_packages
@pre_install.command()
@click.pass_context
@_add_logger
def freeze(ctx, logger=None):
    _freeze_output = sys.stdin.read()
    _freeze_output = [line.strip() for line in _freeze_output.split("\n")]
    saved_packages = _get_saved_packages(ctx.obj["kwargs"]["database_fn"])
    saved_packages = {package_name: {v: k for k, v in zip(slice_["tag"], slice_[
                                                          "hash"])}for package_name, slice_ in saved_packages.groupby("package_name")}
    replacements_made = 0
    for i, line in enumerate(_freeze_output):
        for pn, corr in saved_packages.items():
            if pn in line:
                hash_ = _package_name_to_hash(line, pn)
                if hash_ in corr:
                    _freeze_output[i] = f"{pn}@{corr[hash_]}"
                    replacements_made += 1
                else:
                    logger.warning(
                        f"could not find replacement for {line,pn,hash_}")
    click.echo("\n".join(_freeze_output))
    logger.info(f"{replacements_made} replacements made")
@pre_install.command()
@click.pass_context
def show(ctx):    
    saved_packages = _get_saved_packages(ctx.obj["kwargs"]["database_fn"])
    click.echo(saved_packages)


if __name__ == "__main__":
    pre_install()
