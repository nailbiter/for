"""===============================================================================

        FILE: miscutils/_agit.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-05-25T13:00:56.670813
    REVISION: ---

==============================================================================="""

import uuid
import logging
import re
import subprocess
from git import Repo, Commit
from os import path


def get_random_fn(ext: str = ".txt") -> str:
    assert ext.startswith(".")
    return f"/tmp/{uuid.uuid4()}{ext}"


def filter_safe(
    msg: str,
    sensitive_info: list[str] = [],
    sensitive_info_placeholder: str = "***",
    **_,
) -> str:
    logging.warning(f"sensitive_info: {sensitive_info}")
    for si in sensitive_info:
        msg = msg.replace(si, sensitive_info_placeholder)
    return msg


def get_branch_name(dir_="."):
    # return subprocess.getoutput("git name-rev --name-only HEAD")
    res = subprocess.getoutput(f"cd {dir_} && git status")
    m = re.match(r"(On branch|Auf Branch) (.+)", res)
    assert m is not None, f'"{res}"'
    return m.group(2)


def find_git_path(path_in: str = ".") -> (Repo, str):
    if path.isdir(path_in):
        _path = path_in
    elif path.isfile(path_in):
        _path = path.dirname(path_in)
    else:
        raise NotImplementedError(f'"{path_in}"')
    # FIXME: this probably can be done better
    #    while True:
    repo = None
    for i in range(200):
        logging.info(f"#{i}: _path: {_path}")
        try:
            repo = Repo(_path)
            break
        except Exception as e:
            logging.info(e)
            _path = path.join(_path, "..")
    return repo, _path


def get_head_sha(git_path: str = None) -> Commit:
    repo, _path = find_git_path(**({} if git_path is None else {"path_in": git_path}))
    assert not repo.bare
    head_commit = repo.head.commit
    diff = head_commit.diff(None)
    assert not diff, ("should be no changes on tree (do `git commit -a`)", diff, _path)

    return head_commit


def traverse_commits(head_commit: Commit):
    commits = [
        head_commit,
    ]
    while len(commits) > 0:
        commit = commits.pop(0)
        yield commit
        commits.extend(commit.parents)
