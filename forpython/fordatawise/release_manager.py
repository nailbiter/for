#!/usr/bin/env python3
"""===============================================================================

        FILE: release_manager.py

       USAGE: ./release_manager.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-03T15:41:35.141414
    REVISION: ---

==============================================================================="""

import click
import re
from subprocess import getoutput, call
from git import Repo


def _get_head_sha():
    _path = "."
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

@click.command()
@click.option("-v", "--version")
def release_manager(version):
    prog = re.compile(r"^v(\d+)\.(\d+).(\d+)$")

    if version is None:
        output = getoutput("git tag")
        tags = output.split("\n")
        tags = [prog.match(tag) for tag in tags if prog.match(tag) is not None]
        tags = sorted(tags, key=lambda m: tuple(int(m.group(i+1))
                                                for i in range(3)), reverse=True)
        print(tags[0].group(0))
    else:
        assert prog.match(version) is not None
        _ = _get_head_sha()
        call(f"git tag {version}", shell=True)
        call(f"git push --tags",shell=True)
        #FIXME: auto-increment

if __name__ == "__main__":
    release_manager()
