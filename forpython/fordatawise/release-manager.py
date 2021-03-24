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

TODO:
    1. remove dependency on `gh`

==============================================================================="""

import click
import re
from subprocess import getoutput, call
from git import Repo
import logging
from os import path
import os


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


class _HookManager:
    def __init__(self,enable_hooks,hook_dir):
        self._enable_hooks = enable_hooks
        self._hook_dir = hook_dir
        self._logger = logging.getLogger(self.__class__.__name__)
    def __call__(self,hook_name):
        self._logger.info(f"executing {hook_name} hook")
        hook_fn = path.join(self._hook_dir,hook_name)
        retcode = os.system(hook_fn)
        if hook_name in ["pre-release"]:
            assert retcode == 0, f"{hook_name} hook failed => we stop here"


@click.command()
@click.option("-r", "--release", type=click.Choice(["major", "minor", "patch"]))
@click.option("-a", "--auto-commit")
@click.option("--create-release/--no-create-release", default=False, envvar="CREATE_RELEASE")
@click.option("--release-notes-file", type=click.Path(), envvar="RELEASE_NOTES_FILE")
@click.option("-s", "--save-version-to", type=click.Path(), envvar="SAVE_VERSION_TO")
@click.option("--version-prefix", envvar="VERSION_PREFIX", default="")
@click.option("--enable-hooks/--no-enable-hooks", default=True)
@click.option("--hook-dir", type=click.Path(), envvar="RELEASE_MANAGER__HOOK_DIR", default=".release-manager-hooks")
def release_manager(release, auto_commit, create_release, save_version_to, version_prefix, release_notes_file, enable_hooks, hook_dir):
    apply_hook = _HookManager(enable_hooks,hook_dir)
    apply_hook("pre-release")
    prog = re.compile(r"^v(\d+)\.(\d+).(\d+)$")

    _logger = logging.getLogger("release_manager")
    output = getoutput("git tag")
    tags = output.split("\n")
    tags = [prog.match(tag[len(version_prefix):]) for tag in tags if prog.match(
        tag[len(version_prefix):]) is not None]
    tags = sorted(tags, key=lambda m: tuple(int(m.group(i+1))
                                            for i in range(3)), reverse=True)
    newest_version_match = tags[0]
    newest_version = newest_version_match.group(0)
    if release is None:
        print(newest_version)
    else:
        _sha = None

        major, minor, patch = tuple(
            int(newest_version_match.group(i+1)) for i in range(3))
        if release == "patch":
            patch += 1
        elif release == "minor":
            minor += 1
            patch = 0
        elif release == "major":
            major += 1
            minor = 0
            patch = 0
        else:
            raise NotImplementedError

        if save_version_to is not None:
            with open(save_version_to, "w") as f:
                f.write(".".join([str(x)
                                  for x in [major, minor, patch]]))

        try:
            _sha = _get_head_sha()
        except AssertionError:
            if auto_commit is not None:
                _logger.warning(f"recommit")
                call(f"git commit -a -m '{auto_commit}'", shell=True)
            else:
                raise

        version = f"{version_prefix}v{major}.{minor}.{patch}"
        call(f"git tag {version}", shell=True)
        call(f"git push --tags", shell=True)
        if create_release:
            cmd = f"gh release create {version} --title {version} --notes {version}"
            if release_notes_file is not None:
                cmd = f"{cmd} --notes-file {release_notes_file}"
            call(cmd, shell=True)
    apply_hook("pre-release")


if __name__ == "__main__":
    release_manager()
