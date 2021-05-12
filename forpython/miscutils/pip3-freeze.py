#!/usr/bin/env python3
"""===============================================================================

        FILE: miscutils/pip3-freeze.py

       USAGE: ./miscutils/pip3-freeze.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-12T11:54:03.411529
    REVISION: ---

==============================================================================="""

import click
import sys
import re
import pandas as pd
import urllib.request
import urllib.parse
import base64
import json
import subprocess
import logging
import logging

def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f

@click.command()
@click.option("--github-credentials",envvar="PIP3_FREEZE__GITHUB_CREDENTIALS")
@click.option("--debug/--no-debug",default=False)
@_add_logger
#curl -u ... -X GET 
def pip3_freeze(github_credentials,debug,logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    lines = sys.stdin.readlines()
    lines = [line.strip() for line in lines]
    for i,line in enumerate(lines):
        m = re.match(r"^[a-z0-9_-]+ @ git\+https:\/\/github\.com\/(?P<username>[a-z0-9_]+)\/(?P<repo>[a-z0-9_]+)@(?P<commit_sha>[a-f0-9]{40})",line)
        if m is not None:
            url=r"https://api.github.com/repos/{m.group('username')}/{m.group('repo')}/tags"
#            req = urllib.request.Request(url=url)
#            if github_credentials is not None:
#                base64string = base64.b64encode(github_credentials.encode())
#                req.add_header("Authorization", f"Basic {base64string}")
#            with urllib.request.urlopen(req) as url:
#                data = json.loads(url.read().decode())
            #FIXME: use python, not shell
            cmd = f"""curl {("-u "+github_credentials) if github_credentials is not None else ""} -X GET "https://api.github.com/repos/{m.group("username")}/{m.group("repo")}/tags" """
            logger.info(f"cmd: {cmd}")
            output = subprocess.getoutput(cmd)
            output = output[output.find("["):]
            logger.info(f"output: {output}")
            tags_df = pd.DataFrame(json.loads(output))
            tags_df["sha"] = tags_df.commit.apply(lambda d:d["sha"])
            tags_df = tags_df.query(f"sha=='{m.group('commit_sha')}'")
            assert len(tags_df)==1, (m.group('commit_sha'),tags_df)
#            git+https://github.com/nailbiter/alex_python_toolbox@v3.14.1
            line = f"git+https://github.com/{m.group('username')}/{m.group('repo')}@{list(tags_df.name)[0]}"
        lines[i] = line
    click.echo("\n".join(lines))

if __name__=="__main__":
    pip3_freeze()
