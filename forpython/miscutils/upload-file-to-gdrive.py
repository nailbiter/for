#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/upload-file-to-gdrive.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-08-06T00:47:29.758704
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import webbrowser
import subprocess
import functools
import json5
import typing

coption = functools.partial(click.option, show_default=True, show_envvar=True)


def _load_engine_config(engine_config_path: typing.Optional[str]) -> dict:
    if engine_config_path is None:
        return {}
    else:
        assert engine_config.endswith(".json5")
        with open(engine_config) as f:
            return json5.load(f)


@click.command()
@coption("-f", "--filepath", type=click.Path(exists=True), required=True)
@coption("--is-open-url/--no-is-open-url", " /-n", default=True)
@coption("-e", "--engine", type=click.Choice(["rclone", "gdrive"]), default="rclone")
@coption("--engine-config-path", type=click.Path(exists=True))
def upload_file_to_gdrive(filepath, is_open_url, engine, engine_config_path):
    engine_config = _load_engine_config(engine_config_path)
    if engine == "rclone":
        engine_factory = _RcloneEngine
    elif engine == "gdrive":
        # FIXME: support `gdrive` as well
        raise NotImplementedError(dict(engine=engine))
    else:
        raise NotImplementedError(dict(engine=engine))
    engine = engine_factory(**engine_config)
    id_ = engine.upload_file(filepath)
    url = f"https://drive.google.com/file/d/{id_}/edit"
    click.echo(url)
    if is_open_url:
        webbrowser.open(url)


def _run_cmd(cmd: str) -> str:
    logging.warning(f"> {cmd}")
    ec, out = subprocess.getstatusoutput(cmd)
    assert ec == 0, (ec, cmd, out)
    return out


class _RcloneEngine:
    """
    FIXME: handle uploads to folders
    """

    def __init__(self, remote_name: str = "gdrive", rclone_exec="rclone"):
        self._remote_name = remote_name
        self._rclone_exec = rclone_exec

    def upload_file(self, file_path: str) -> str:
        _run_cmd(f"{self._rclone_exec} copy '{file_path}' {self._remote_name}:")
        _, fn = path.split(file_path)
        out = _run_cmd(f"{self._rclone_exec} lsf -F ip {self._remote_name}:'{fn}'")
        id_, _ = out.split(";", maxsplit=1)
        return id_


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    upload_file_to_gdrive(auto_envvar_prefix="UPLOAD_FILE_TO_GDRIVE")
