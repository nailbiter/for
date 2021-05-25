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
from collections import namedtuple


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


class _ShaToTag:
    def __init__(self, github_credentials):
        self._logger = logging.getLogger(self.__class__.__name__)
        self._github_credentials = github_credentials

    def __call__(self, m):
        logger, github_credentials = self._logger, self._github_credentials
        url = r"https://api.github.com/repos/{m.group('username')}/{m.group('repo')}/tags"
    #            req = urllib.request.Request(url=url)
    #            if github_credentials is not None:
    #                base64string = base64.b64encode(github_credentials.encode())
    #                req.add_header("Authorization", f"Basic {base64string}")
    #            with urllib.request.urlopen(req) as url:
    #                data = json.loads(url.read().decode())
        # FIXME: use python, not shell
        cmd = f"""curl {("-u "+github_credentials) if github_credentials is not None else ""} -X GET "https://api.github.com/repos/{m.group("username")}/{m.group("repo")}/tags" """
        logger.info(f"cmd: {cmd}")
        output = subprocess.getoutput(cmd)
        output = output[output.find("["):]
        logger.info(f"output: {output}")
        tags_df = pd.DataFrame(json.loads(output))
        tags_df["sha"] = tags_df.commit.apply(lambda d: d["sha"])
        tags_df = tags_df.query(f"sha=='{m.group('commit_sha')}'")
        assert len(tags_df) == 1, (m.group('commit_sha'), tags_df)
    #            git+https://github.com/nailbiter/alex_python_toolbox@v3.14.1
        line = f"git+https://github.com/{m.group('username')}/{m.group('repo')}@{list(tags_df.name)[0]}"
        return line


class _Matcher:
    def __init__(self, regex, callback):
        self.compiled_regex = re.compile(regex)
        self._callback = callback

    def __call__(self, *args, **kwargs):
        return self._callback(*args, **kwargs)


@click.command()
@click.option("--github-credentials", envvar="PIP3_FREEZE__GITHUB_CREDENTIALS")
@click.option("--debug/--no-debug", default=False)
@click.option("--include-local/--exclude-local", default=True)
@_add_logger
# curl -u ... -X GET
def pip3_freeze(github_credentials, debug, include_local, logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    lines = sys.stdin.readlines()
    lines = [line.strip() for line in lines]
    matchers = [
        _Matcher(**{
            "regex": r"^[a-z0-9_-]+ @ git\+https:\/\/github\.com\/(?P<username>[a-z0-9_]+)\/(?P<repo>[a-z0-9_]+)@(?P<commit_sha>[a-f0-9]{40})",
            "callback": _ShaToTag(github_credentials)
        }),
    ]
    if not include_local:
        matchers.append(_Matcher(
            **{
                "regex": r"^[a-z0-9_-]+ @ file.*$",
                "callback": lambda m: None,
            })
        )

    for i, line in enumerate(lines):
        for matcher in matchers:
            m = matcher.compiled_regex.match(line)
            if m is not None:
                line = matcher(m)
                lines[i] = line
    click.echo("\n".join([line for line in lines if line is not None]))


if __name__ == "__main__":
    pip3_freeze()
