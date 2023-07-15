#!/usr/bin/env python3
"""===============================================================================

        FILE: ./miscutils/github.py

       USAGE: ././miscutils/github.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-02-15T18:42:13.617734
    REVISION: ---

==============================================================================="""

import glob
import inspect
import logging
import os
import re
import subprocess
import types
import webbrowser
from os import path
from typing import cast

import click
from git import Repo
from jinja2 import Template


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)

    _f.__name__ = f.__name__
    return _f


def _get_branch_name(dir_="."):
    # return subprocess.getoutput("git name-rev --name-only HEAD")
    res = subprocess.getoutput(f"cd {dir_} && git status")
    m = re.match(r"(On branch|Auf Branch) (.+)", res)
    assert m is not None, f'"{res}"'
    return m.group(2)


@click.group()
@click.option("--debug/--no-debug", default=True)
def github(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)


@github.command()
def branch():
    click.echo(_get_branch_name())


def _cleanup_remote_git_url(remote_git_url):
    if remote_git_url.endswith(".git"):
        remote_git_url = remote_git_url[:-4]
    m = re.match("(https://)[^/]+@(github.com/.*)", remote_git_url)
    if m is not None:
        remote_git_url = m.group(1) + m.group(2)
    return remote_git_url


def _get_head_sha(path_to_repo=None):
    """
    return hex, is_no_modifications_done
    """
    if path_to_repo is None:
        path_to_repo = "."
        # FIXME: this probably can be done better
        while True:
            try:
                repo = Repo(path_to_repo)
                break
            except Exception:
                path_to_repo = path.join(path_to_repo, "..")
    else:
        repo = Repo(path_to_repo)
    assert not repo.bare
    head_commit = repo.head.commit
    #    assert(not head_commit.diff(None)
    #           ), "should be no changes on tree (do `git commit -a`)"
    return head_commit.hexsha, not head_commit.diff(None)


@github.command(name="open")
@click.option(
    "-f",
    "--file-name",
    type=click.Path(),
    default=["."],
    multiple=True,
    show_envvar=True,
)
@click.option(
    "--freeze-commit/--no-freeze-commit", "-z", default=False, show_envvar=True
)
@click.option("--branch", show_envvar=True)
@click.option("-n", "--no-open-url", default=False, is_flag=True, show_envvar=True)
@click.option("--commit", show_envvar=True)
@click.option("--head", type=int, show_envvar=True)
@click.option("-p", "--pre-hook", show_envvar=True)
@click.option("--auto-commit", show_envvar=True)
@click.option(
    "--fail-on-pre-hook-fail/--no-fail-on-pre-hook-fail",
    default=False,
    show_envvar=True,
    show_default=True,
)
@click.option(
    "-f", "--out-format-template", type=click.Path(exists=True), show_envvar=True
)
@_add_logger
def open_url(
    file_name,
    freeze_commit,
    no_open_url,
    branch,
    head,
    commit,
    auto_commit,
    pre_hook,
    out_format_template,
    fail_on_pre_hook_fail,
    logger=None,
):
    if pre_hook is not None:
        ec = os.system(pre_hook)
        if fail_on_pre_hook_fail:
            assert ec == 0, (ec, pre_hook)

    open_url = not no_open_url
    _file_name = []
    for fn in file_name:
        fn = path.abspath(fn)
        if "*" in fn:
            _file_name.extend(glob.glob(fn, recursive=True))
        else:
            _file_name.append(fn)
    file_name = _file_name

    #    git_dir = "."
    git_dir = path.split(file_name[0])[0]
    while not path.isdir(path.join(git_dir, ".git")):
        git_dir = path.join(git_dir, "..")

    # TODO: add warning if commit is not pushed
    _, is_no_modifications_done = _get_head_sha(path_to_repo=git_dir)
    if auto_commit is not None:
        if not is_no_modifications_done:
            os.system(f"git commit -a -m '{auto_commit}' 1>&2 && git push 1>&2")
    else:
        logger.warning(f"there are local modifications!")

    # click.echo(f"git_dir: {git_dir}")
    remote_git_url = subprocess.getoutput(f"cd {git_dir} && git remote get-url origin")
    remote_git_url = _cleanup_remote_git_url(remote_git_url)
    # click.echo(f"remote_git_url: {remote_git_url}")
    if branch is None:
        branch = _get_branch_name(git_dir)
    # click.echo(f"git_branch: {git_branch}")
    for file_name_ in file_name:
        env = {
            "remote_git_url": remote_git_url,
            "git_branch": branch,
            "path": path,
            "file_name": file_name_,
            "git_dir": git_dir,
        }
        if not freeze_commit:
            url_tpl = _fetch_template_or_default(
                out_format_template,
                """{{remote_git_url}}/tree/{{git_branch}}/{{path.relpath(file_name,start=git_dir)}}""",
            )
        else:
            if commit is None:
                cmd = "git rev-parse HEAD"
                if head is not None:
                    assert head > 0
                    cmd = f"{cmd}~{head}"
                commit = subprocess.getoutput(cmd)
            env["commit"] = commit
            url_tpl = _fetch_template_or_default(
                out_format_template,
                """{{remote_git_url}}/blob/{{commit}}/{{path.relpath(file_name,start=git_dir)}}""",
            )

        url = Template(url_tpl).render(env)
        click.echo(f"{url}")
        if open_url:
            webbrowser.open(url)


def _fetch_template_or_default(template_file_name, default):
    if template_file_name is None:
        return default
    else:
        with open(template_file_name) as f:
            return f.read()


@github.command(name="cpc")
@click.option("-m", "--message", show_envvar=True, required=True)
@click.option(
    "--push/--no-push", " /-n", default=True, show_envvar=True, show_default=True
)
@click.option("--pull/--no-pull", "-u/ ", default=False, show_envvar=True)
@click.option("-p", "--pre-hook", show_envvar=True)
@click.option(
    "--fail-on-pre-hook-fail/--no-fail-on-pre-hook-fail",
    default=False,
    show_envvar=True,
    show_default=True,
)
@click.option("-a", "--additional-options", default="")
@click.option(
    "-f", "--out-format-template", type=click.Path(exists=True), show_envvar=True
)
def commit_push_copy(
    message,
    push,
    pull,
    pre_hook,
    additional_options,
    fail_on_pre_hook_fail,
    out_format_template,
):
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    if pre_hook is not None:
        ec = os.system(pre_hook)
        if fail_on_pre_hook_fail:
            assert ec == 0, (ec, pre_hook)

    if pull:
        os.system("git pull 1>&2")
    _, is_no_modifications_done = _get_head_sha()
    if message is None:
        assert is_no_modifications_done, "commit first or provide `--message` option"
    else:
        # if not is_no_modifications_done:
        cmd = f"git commit -a -m '{message}' {additional_options} 1>&2"
        logging.info(f"cmd: `{cmd}`")
        os.system(cmd)
        if push:
            os.system("git push 1>&2")
        else:
            logger.warning("skip push because `--no-push` was set")

    hex_, _ = _get_head_sha()

    out = Template(_fetch_template_or_default(out_format_template, "{{hex_}}")).render(
        dict(hex_=hex_)
    )
    click.echo(out)


if __name__ == "__main__":
    github(auto_envvar_prefix="GITHUB")
