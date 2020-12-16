"""===============================================================================

        FILE: fordatawise/_bigfile_in_git_manager/State/_file_hash_computer.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-12-16T17:28:51.174138
    REVISION: ---

==============================================================================="""

import hashlib
import logging
from os import path
from datetime import datetime
import pandas as pd
import sqlite3


class _FileHashComputer:
    _FILE_HASH_CACHE_TABLE_NAME = "file_hash_cache"

    def __init__(self, database_fn):
        self._logger = logging.getLogger(self.__class__.__name__)
        self._database_fn = database_fn

    def _get_conn(self):
        return sqlite3.connect(self._database_fn)

    def __call__(self, fn, algorithm="sha256"):
        fn = path.realpath(fn)
        mtime = datetime.fromtimestamp(path.getmtime(fn)).isoformat()

        conn = self._get_conn()
        try:
            df = pd.read_sql_query(
                f"""select sha from {_FileHashComputer._FILE_HASH_CACHE_TABLE_NAME} where mtime="{mtime}" and fn="{fn}" and algorithm="{algorithm}" """, conn)
        except pd.io.sql.DatabaseError:
            df = pd.DataFrame()
        conn.close()

        if len(df) == 0:
            self._logger.debug(f"no sha! for {fn,mtime}")
            sha = hashlib.sha256(open(fn, "rb").read()).hexdigest()
            df = pd.DataFrame(
                [{"algorithm": algorithm, "fn": fn, "mtime": mtime, "sha": sha}])
            self._logger.debug(f"appending {df.to_dict(orient='records')}")
            conn = self._get_conn()
            df.to_sql(_FileHashComputer._FILE_HASH_CACHE_TABLE_NAME,
                      conn, if_exists="append", index=None)
            conn.close()
            return sha
        else:
            sha = df.to_dict(orient="records")[0]["sha"]
            self._logger.debug(f"retrieved save sha: {sha} for {fn,mtime}")
            return sha
