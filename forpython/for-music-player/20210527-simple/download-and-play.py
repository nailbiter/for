#!/usr/bin/env python3
"""===============================================================================

        FILE: download-and-play.py

       USAGE: ./download-and-play.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-27T13:57:01.359332
    REVISION: ---

==============================================================================="""

import click
import os
from jinja2 import Template
import logging
import sys
from tqdm import tqdm
import shlex


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


@click.group()
@click.option("--remote-host", required=True, envvar="REMOTE_HOST")
@click.option("--remote-host-port", type=int, envvar="REMOTE_HOST_PORT")
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def download_and_play(ctx, debug, **kwargs):
    if debug:
        logging.basicConfig(level=logging.INFO)
    ctx.ensure_object(dict)
    ctx.obj["kwargs"] = kwargs


@download_and_play.command()
@click.option("--search-command", required=True, envvar="SEARCH_COMMAND")
@click.argument("what")
@click.pass_context
@_add_logger
def search(ctx, search_command, what, logger=None):
    cmd = Template(search_command).render({"pattern": what})
    cmd = Template("ssh {%if remote_host_port%}-p {{remote_host_port}} {%endif%} {{remote_host}} \"{{cmd}}\"").render(
        {**ctx.obj["kwargs"], "cmd": cmd})
    logger.info(f"cmd: {cmd}")
    os.system(cmd)


@download_and_play.command(name="download-and-play")
@click.option("--temp-dir", type=click.Path(), required=True, envvar="TMP_DIR")
@click.pass_context
@_add_logger
def dp(ctx, temp_dir, logger=None):
    file_list = sys.stdin.readlines()
    file_list = list(filter(lambda s: len(s) > 0,
                            map(lambda s: s.strip(), file_list)))
#    click.echo(file_list)
    os.system(f"rm -rf {temp_dir}/*.mp3")
    cmd = Template("scp {%if remote_host_port%}-P {{remote_host_port}} {%endif%} {%for fn in file_list%}{{remote_host}}:\"{{fn}}\" {%endfor%} {{temp_dir}}").render(
        {**ctx.obj["kwargs"], "file_list": map(shlex.quote, file_list), "temp_dir": temp_dir})
    logger.info(f"cmd: {cmd}")
    os.system(cmd)
    os.system(f"vlc {temp_dir}")


if __name__ == "__main__":
    download_and_play()
