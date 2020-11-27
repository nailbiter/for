"""===============================================================================

        FILE: ./fordatawise/_bigfile_in_git_manager/state.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-20T11:37:27.708108
    REVISION: ---

==============================================================================="""

import logging
from os.path import join, isfile, abspath
import json
import sqlite3
import pandas as pd
from _bigfile_in_git_manager import system
from git import Repo
from os import makedirs
from datetime import datetime
import hashlib

def _get_head_sha(path="."):
    _path = path
    # FIXME: this probably can be done better
    while True:
        try:
            repo = Repo(_path)
            break
        except Exception:
            _path = join(_path, "..")
    assert not repo.bare
    head_commit = repo.head.commit
    assert(not head_commit.diff(None)
           ), "should be no changes on tree (do `git commit -a`)"
    return head_commit.hexsha

class State:
    def __init__(self, storage_dir, curDir, database_fn):
        self._database_fn = database_fn
        self._logger = logging.getLogger(self.__class__.__name__)
        self._storage_dir = storage_dir
        self._curDir = curDir
        self._sha = None
        self._logger.info(f"sha: {self._sha}")

    def get_storage_dir(self):
        return self._storage_dir
    def _get_sha(self):
        if self._sha is None:
            self._sha = _get_head_sha()
            makedirs(join(self._storage_dir,self._sha), exist_ok=True)
        return self._sha    
    def _get_conn(self):
        return sqlite3.connect(self._database_fn)

    def _get_prev_sha(self):
        lt_df = self.get_log_table()
        if len(lt_df)==0:
            return None
        else:
            lt_df = lt_df[[sha!=self._get_sha() for sha in lt_df.sha]]
            lt_df["datetime"] = lt_df["datetime"].apply(datetime.fromisoformat)
            lt_df = lt_df.sort_values(by="datetime",ascending=False)
            shas = list(lt_df.sha)
            return list(lt_df.sha)[0]

    _LOG_TABLE_NAME = "bigfile_in_git_manager_command_log"
    def get_log_table(self):
        conn = self._get_conn()
        try:
            sql_sources_df = pd.read_sql_query(
                f"select * from {State._LOG_TABLE_NAME}", conn)
        except pd.io.sql.DatabaseError:
            self._logger.warning(
                f"could not fetch `{State._LOG_TABLE_NAME}` => returning empty table")
            sql_sources_df = pd.DataFrame({"cmd":[],"datetime":[],"sha":[]})

        conn.close()
        return sql_sources_df    

    def _system(self,cmd):
        system(cmd)
        df = pd.DataFrame([{"cmd":cmd,"datetime":datetime.now().isoformat(), "sha":self._get_sha()}])
        conn = self._get_conn()
        df.to_sql(State._LOG_TABLE_NAME, conn, if_exists="append",index=None)
        conn.close()

    def copy(self, fn):
        src = join(self._curDir, fn)
        dst = join(self._storage_dir, self._get_sha(), fn)
        prev_sha = self._get_prev_sha()
        self._logger.info(f"prev_sha: {prev_sha}")
        need_to_copy = True

        if prev_sha is not None:
            src_ = join(self._storage_dir, prev_sha, fn)
            if isfile(src_):
                prev_sha = hashlib.sha256(open(src_, "rb").read()).hexdigest()
                new_sha = hashlib.sha256(open(src, "rb").read()).hexdigest()
                self._logger.info(f"prev_sha: {prev_sha}, new_sha: {new_sha}")
                if prev_sha == new_sha:
                    need_to_copy = False
                    src = src_

        if need_to_copy:
            self._system(f"cp {src} {dst}")
        else:
            #self._logger(f"set up symlink for {fn}")
            self._system(f"ln -s {abspath(src_)} {dst}")
