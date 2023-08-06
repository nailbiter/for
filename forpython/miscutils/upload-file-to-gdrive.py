#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/upload-file-to-gdrive.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: use `mypy upload-file-to-gdrive.py` for type check
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-08-06T00:47:29.758704
    REVISION: ---


==============================================================================="""

# > time rclone lsjson gdrive: --dirs-only|jq '.|length'     (base)
# 92
# ________________________________________________________
# Executed in    4.71 secs      fish           external
#    usr time  166.88 millis    0.35 millis  166.53 millis
#    sys time   59.34 millis    1.08 millis   58.27 millis

# > time rclone lsjson gdrive: --dirs-only --recursive|jq '.|length'  (base)
# 578
# ________________________________________________________
# Executed in   10.34 secs      fish           external
#    usr time  313.66 millis    0.42 millis  313.24 millis
#    sys time  131.74 millis    1.28 millis  130.46 millis


# from dotenv import load_dotenv

import click
import os
from os import path
import logging
import webbrowser
import subprocess
import functools
import json5
import typing
import pandas as pd
import json
from jinja2 import Template
import time
from datetime import datetime, timedelta
from glob import glob

coption = functools.partial(click.option, show_default=True, show_envvar=True)


def _load_engine_config(engine_config_path: typing.Optional[str]) -> dict:
    if engine_config_path is None:
        return {}
    else:
        assert engine_config.endswith(".json5")
        with open(engine_config) as f:
            return json5.load(f)


@click.command()
@coption("-f", "--filepath", required=True)
@coption("--is-open-url/--no-is-open-url", " /-n", default=True)
@coption("-e", "--engine", type=click.Choice(["rclone", "gdrive"]), default="rclone")
@coption("--engine-config-path", type=click.Path(exists=True))
@coption("--parent-dir-id", "-p", type=str)
@coption("--expand-index", "-e", type=int)
def upload_file_to_gdrive(
    filepath, is_open_url, engine, engine_config_path, parent_dir_id, expand_index
):
    if expand_index is not None:
        expansions = glob(f"{filepath}*")
        expansions = sorted(expansions, reverse=True)
        logging.warning(expansions[:5])
        filepath = expansions[expand_index]
    assert path.isfile(filepath), (filepath,)

    engine_config = _load_engine_config(engine_config_path)
    if engine == "rclone":
        engine_factory = _RcloneEngine
    elif engine == "gdrive":
        # FIXME: support `gdrive` as well
        raise NotImplementedError(dict(engine=engine))
    else:
        raise NotImplementedError(dict(engine=engine))
    engine = engine_factory(**engine_config)
    id_ = engine.upload_file(filepath, parent_dir_id=parent_dir_id)
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

    def __init__(
        self,
        remote_name: str = "gdrive",
        rclone_exec="rclone",
        cache_file_path: typing.Optional[str] = path.join(
            path.dirname(
                __file__,
            ),
            ".upload_file_to_gdrive.cache.json",
        ),
    ):
        self._remote_name = remote_name
        self._rclone_exec = rclone_exec
        self._logger = logging.getLogger(self.__class__.__name__)
        self._cache_file_path = cache_file_path

    def _load_cache(self) -> None:
        self._logger.warning(f"loading cache `{self._cache_file_path}`")
        if self._cache_file_path is None:
            res = {}
        elif not path.isfile(self._cache_file_path):
            with open(self._cache_file_path, "w") as f:
                json.dump({}, f)
            res = {}
        else:
            with open(self._cache_file_path) as f:
                res = json.load(f)
        self._cache = res

    def _save_cache(self, keyval: dict) -> None:
        self._logger.warning(f"saving cache `{self._cache_file_path}` with {keyval}")

        self._cache.update(keyval)

        if self._cache_file_path is not None:
            with open(self._cache_file_path, "w") as f:
                return json.dump(self._cache, f)

    def _parent_dir_id_to_path(self, parent_dir_id: str) -> str:
        self._load_cache()

        if parent_dir_id not in self._cache:
            tic = datetime.now()
            paths_df = pd.DataFrame(
                json.loads(
                    _run_cmd(
                        f"{self._rclone_exec} lsjson {self._remote_name}: --recursive --dirs-only"
                    )
                )
            )
            paths_df.set_index("ID", inplace=True)
            assert paths_df.index.is_unique
            self._save_cache({parent_dir_id: paths_df.loc[parent_dir_id, "Path"]})
            toc = datetime.now()
            self._logger.warning(f"`_parent_dir_id_to_path` took {str(toc-tic)}")
        else:
            self._logger.warning(f"cache hit for `{parent_dir_id}`")

        return self._cache[parent_dir_id]

    def upload_file(
        self, file_path: str, parent_dir_id: typing.Optional[str] = None
    ) -> str:
        if parent_dir_id is not None:
            parent_dir_path = self._parent_dir_id_to_path(parent_dir_id)
        else:
            parent_dir_path = None

        remote_file_path = Template(
            """{{remote_name}}:{%if parent_dir_path is not none%}{{parent_dir_path}}/{%endif%}"""
        ).render(
            dict(
                remote_name=self._remote_name,
                parent_dir_path=parent_dir_path,
            )
        )

        _run_cmd(f"{self._rclone_exec} copy '{file_path}' '{remote_file_path}'")
        _, fn = path.split(file_path)
        out = _run_cmd(f"{self._rclone_exec} lsf -F ip {remote_file_path}'{fn}'")
        id_, _ = out.split(";", maxsplit=1)
        return id_


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    upload_file_to_gdrive(auto_envvar_prefix="UPLOAD_FILE_TO_GDRIVE")
