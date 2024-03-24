"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_file_to_from_gdrive.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2024-03-24T19:47:20.961178
    REVISION: ---

==============================================================================="""
import typing
import json5
import logging
import os
import subprocess
from os import path
import json
import copy
import uuid
from datetime import datetime, timedelta
import pandas as pd


def run_cmd(cmd: str) -> str:
    logging.warning(f"> {cmd}")
    ec, out = subprocess.getstatusoutput(cmd)
    assert ec == 0, (ec, cmd, out)
    return out


class RcloneEngine:
    """
    FIXME: handle uploads to folders
    """

    def __init__(
        self,
        remote_name: str = "gdrive",
        rclone_exec: str = "rclone",
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

    @property
    def cache(self) -> dict:
        self._load_cache()
        return copy.deepcopy(self._cache)

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

    def _id_to_path(
        self, parent_dir_id: str, object_type: typing.Literal["file", "dir"]
    ) -> str:
        self._load_cache()

        if parent_dir_id not in self._cache:
            tic = datetime.now()
            if object_type == "dir":
                only_key = "--dirs-only"
            elif object_type == "file":
                only_key = "--files-only"
            else:
                raise NotImplementedError(dict(object_type=object_type))
            paths_df = pd.DataFrame(
                json.loads(
                    run_cmd(
                        f"{self._rclone_exec} lsjson {self._remote_name}: --recursive {only_key}"
                    )
                )
            )
            paths_df.set_index("ID", inplace=True)
            assert paths_df.index.is_unique or object_type == "file"
            self._save_cache({parent_dir_id: paths_df.loc[parent_dir_id, "Path"]})
            toc = datetime.now()
            self._logger.warning(f"`_id_to_path` took {str(toc-tic)}")
        else:
            self._logger.warning(f"cache hit for `{parent_dir_id}`")

        return self._cache[parent_dir_id]

    def download_file(self, file_id: str) -> str:
        file_path = self._id_to_path(file_id, object_type="file")
        _, ext = path.splitext(file_path)
        local_path = f"/tmp/{uuid.uuid4()}"
        logging.warning((file_path, ext, local_path))
        _ = run_cmd(
            f"{self._rclone_exec} copy {self._remote_name}:{file_path} {local_path}"
        )
        (fn,) = os.listdir(local_path)
        return path.join(local_path, fn)

    def upload_file(
        self,
        file_path: str,
        parent_dir_id: typing.Optional[str] = None,
        object_type: typing.Literal["file", "dir"] = "file",
    ) -> str:
        parent_dir_path = (
            None
            if parent_dir_id is None
            else self._id_to_path(parent_dir_id, object_type="dir")
        )

        remote_file_path = Template(
            """{{remote_name}}:{%if parent_dir_path is not none%}{{parent_dir_path}}/{%endif%}"""
        ).render(
            dict(
                remote_name=self._remote_name,
                parent_dir_path=parent_dir_path,
            )
        )

        if object_type == "file":
            pass
        elif object_type == "dir":
            basedir = path.basename(file_path)
            remote_file_path = path.normpath(f"{remote_file_path}/{basedir}")
            run_cmd(f"{self._rclone_exec} mkdir {remote_file_path}")
        else:
            raise NotImplementedError(dict(object_type=object_type))

        run_cmd(f"{self._rclone_exec} copy '{file_path}' '{remote_file_path}'")
        _, fn = path.split(file_path)

        if object_type == "file":
            out = run_cmd(f"{self._rclone_exec} lsf -F ip {remote_file_path}'{fn}'")
        elif object_type == "dir":
            remote_parent_dir, remote_base = path.split(
                remote_file_path.removeprefix(f"{self._remote_name}:")
            )
            remote_parent_dir = f"{self._remote_name}:{remote_parent_dir}"

            out = run_cmd(f"{self._rclone_exec} lsf -F ip {remote_parent_dir}")
            (out,) = [
                line
                for line in out.strip().split("\n")
                if line.endswith(f";{remote_base}/")
            ]
        else:
            raise NotImplementedError(dict(object_type=object_type))
        id_, _ = out.split(";", maxsplit=1)
        return id_


def load_engine_config(engine_config_path: typing.Optional[str]) -> dict:
    if engine_config_path is None:
        return {}
    else:
        assert engine_config.endswith(".json5")
        with open(engine_config) as f:
            return json5.load(f)
