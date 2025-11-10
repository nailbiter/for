#!/usr/bin/env python

"""===============================================================================
        FILE: /Users/nailbiter/for/forpython/miscutils/poor-mans-airflow.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-10-30T19:49:20.325527
    REVISION: ---

==============================================================================="""

import click
import os
from os import path
import logging
import functools
import string
import sys
import typing
from datetime import datetime, timedelta, date
import json
import subprocess
from string import Template
import re

from dotenv import dotenv_values


from dotenv import load_dotenv

DEFAULT_HOME_DIR = f"{os.environ['HOME']}/.poor_mans_airflow"
moption = functools.partial(click.option, show_default=True, show_envvar=True)


LAUNCHD_CONFIG_TPL = string.Template(
    """
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.myuser.mydailyscript</string>

    <key>ProgramArguments</key>
    <array>
        <string>$python_exec</string>
        <string>$script_abspath</string>
        <string>daily-run</string>
        <string>--home-dir</string>
        <string>$home_dir</string>
    </array>

    <key>StartCalendarInterval</key>
    <dict>
        <key>Hour</key>
        <integer>$hour</integer>
        <key>Minute</key>
        <integer>$minute</integer>
    </dict>
    
    <key>StandardOutPath</key>
    <string>/tmp/my-daily-script.log</string>
    <key>StandardErrorPath</key>
    <string>/tmp/my-daily-script.log</string>
</dict>
</plist>
"""
)


@click.group()
def poor_mans_airflow():
    pass


@poor_mans_airflow.group()
@moption(
    "--home-dir",
    "-H",
    type=click.Path(dir_okay=True, file_okay=False, exists=True),
    required=True,
    default=f"{os.environ['HOME']}/.poor_mans_airflow/",
)
@click.pass_context
def analyze_runs(ctx, home_dir):
    ctx.ensure_object(dict)
    ctx.obj["home_dir"] = home_dir


@analyze_runs.command()
@click.option("-o", "--out-mode", type=click.Choice(["plain", "html"]), default="plain")
@click.pass_context
def tree(ctx, out_mode):
    import pandas as pd

    home_dir = ctx.obj["home_dir"]
    config = _load_config(home_dir)

    df_runs = pd.read_json(path.join(home_dir, "runs.jsonl"), lines=True)
    df_runs["now"] = df_runs.pop("now_isoformat").apply(datetime.fromisoformat)

    df_tree = df_runs.copy()
    df_tree["dt"] = df_runs["now"].dt.strftime("%Y-%m-%d (%a)")
    df_tree = df_tree.groupby(["dt", "job_name"])[["ec"]].mean().reset_index()
    df_tree = pd.pivot(
        df_tree,
        index="job_name",
        columns="dt",
        values="ec",
    )
    df_tree = df_tree.loc[
        sorted(df_tree.index, key=[j["name"] for j in config["jobs"]].index)
    ]

    if out_mode == "plain":
        click.echo(df_tree)
    elif out_mode == "html":
        click.echo(
            df_tree.style.highlight_between(right=0, color="green")
            .highlight_between(left=0, inclusive="right", color="red")
            .highlight_null(color="black")
            .format(lambda x: f"{x:.1f}")
            .set_table_styles(
                [
                    {"selector": "td, th", "props": [("border", "1px solid grey")]},
                    {"selector": "table", "props": [("border-collapse", "collapse")]},
                ]
            )
            .to_html()
        )
    else:
        raise NotImplementedError(dict(out_mode=out_mode))


def _load_config(home_dir: str) -> typing.Optional[dict]:
    logger = get_configured_logger("_load_config")
    config_path = path.join(home_dir, "config.json")
    if path.isfile(config_path):
        with open(config_path) as f:
            config = json.load(f)
        logger.debug("loaded config")
        return config
    else:
        logger.error(f"no config found at `{config_path}`, exiting...")
        return None


@poor_mans_airflow.command()
@moption("--home-dir", "-H", type=click.Path(), required=True)
@moption("--dry-run/--no-dry-run", "-D/ ", default=False)
def daily_run(home_dir, dry_run):
    home_dir = path.abspath(home_dir)
    os.makedirs(home_dir, exist_ok=True)

    now = datetime.now()

    logger = get_configured_logger(
        "daily_run",
        level="INFO",
        log_to_file=path.join(home_dir, "daily_run.log.txt"),
        file_mode="a",
    )
    logger.info(f"started daily_run, now is `{now}`")

    config = _load_config(home_dir)
    if config is None:
        return

    jsonl_log = config.get("jsonl_log", path.join(home_dir, "runs.jsonl"))

    for job in config.get("jobs", []):
        job_name = job["name"]
        logger.info(f"running job `{job_name}`")

        if not job.get("is_enabled", True):
            logger.info(f"is_enabled==False => skip")
            continue

        cmds = ([job["cmd"]] if "cmd" in job else []) + job.get("cmds", [])
        logger.info(cmds)

        for _, cmd in enumerate(cmds):
            my_env = os.environ.copy()
            run_kwargs = dict()

            if "cwd" in job:
                run_kwargs["cwd"] = job["cwd"]

            if job.get("render_cmd", False):
                render_vars_file = job.get("render_vars_file")
                logger.debug(render_vars_file)
                render_vars: dict = (
                    {}
                    if render_vars_file is None
                    else dotenv_values(job["render_vars_file"])
                )
                logger.debug(render_vars)
                cmd = Template(cmd).substitute(**render_vars)
                logger.debug(cmd)

            schedule_regexp = job.get("schedule_regexp")
            now_to_match = now.strftime("%Y-%m-%d (%a)")
            if (
                schedule_regexp is not None
                and re.match(schedule_regexp, now_to_match) is None
            ):
                logging.warning(
                    f"no match `{now_to_match}` with `{schedule_regexp}` ==> skip"
                )
                continue

            if dry_run:
                logger.warning(f"dry_run for `{job_name}`")
            else:
                ec, stdout, stderr = 0, None, None
                try:
                    result = subprocess.run(
                        cmd,
                        # cwd=start_directory,  # Set the starting directory
                        env=my_env,  # Pass the augmented environment variables
                        check=True,  # Raise an exception if the command fails
                        capture_output=True,  # Capture stdout and stderr
                        text=True,  # Decode output as text
                        shell=True,
                        **run_kwargs,
                    )
                    stdout, stderr = result.stdout, result.stderr
                except subprocess.CalledProcessError as e:
                    ec, stdout, stderr = e.returncode, e.stdout, e.stderr
                    logger.error(dict(name=job_name, ec=ec, now=now))
                # ec, out = subprocess.getstatusoutput(cmd)

                logger.info(dict(ec=ec, cmd=cmd, name=job_name))
                with open(jsonl_log, "a", encoding="utf-8") as f:
                    f.write(
                        json.dumps(
                            dict(
                                job_name=job_name,
                                now_isoformat=now.isoformat(),
                                ec=ec,
                                cmd=cmd,
                                out=stdout,
                                stderr=stderr,
                            )
                        )
                        + "\n"
                    )


@poor_mans_airflow.command()
@moption("-m", "--mode", type=click.Choice(["launchd", "anacron"]), required=True)
@moption("-P", "--python-exec", default=sys.executable)
@moption("-H", "--hour", type=int, default=10)
@moption("-M", "--minute", type=int, default=0)
@moption("--home-dir", type=click.Path(), default=DEFAULT_HOME_DIR)
def make_config(mode, python_exec, hour, minute, home_dir):
    home_dir = path.abspath(home_dir)
    os.makedirs(home_dir, exist_ok=True)

    if mode == "launchd":
        click.echo(
            LAUNCHD_CONFIG_TPL.substitute(
                dict(
                    mode=mode,
                    home_dir=home_dir,
                    python_exec=python_exec,
                    hour=hour,
                    minute=minute,
                    script_abspath=__file__,
                )
            )
        )
        logging.warning(
            "save to `~/Library/LaunchAgents/com.myuser.mydailyscript.plist`"
        )
        logging.warning(
            "launchctl unload ~/Library/LaunchAgents/com.myuser.mydailyscript.plist"
        )
        logging.warning(
            "load with `launchctl load ~/Library/LaunchAgents/com.myuser.mydailyscript.plist`"
        )
    else:
        raise NotImplementedError(dict(mode=mode))


## copied from https://github.com/nailbiter/alex_leontiev_toolbox_python/blob/bf4724399c87184b05272d47887fc59e610e6e82/alex_leontiev_toolbox_python/utils/logging_helpers/__init__.py
## to avoid external dependency on `altp`
## START vv


@functools.singledispatch
def make_log_format(x) -> str:
    raise NotImplementedError(x)


@make_log_format.register
def _(l: list) -> str:
    return " - ".join([f"%({x})s" for x in l])


_LOG_LEVELS_URGENCY = {
    k: i for i, k in enumerate(["DEBUG", "INFO", "WARNING", "ERROR"])
}


def get_configured_logger(
    name: str,
    level: typing.Literal["DEBUG", "INFO", "WARNING"] = "DEBUG",
    log_format=make_log_format(
        [
            "name",
            "levelname",
            "asctime",
            "message",
        ]
    ),
    is_pre_clean: bool = True,
    is_propagate: bool = False,
    log_to_file: typing.Optional[str] = None,
    file_log_level: typing.Literal["DEBUG", "INFO", "WARNING"] = "DEBUG",
    file_log_format: typing.Optional[str] = None,
    file_mode: str = "w",
) -> logging.Logger:
    app_logger = logging.getLogger(name)

    if not is_propagate:
        app_logger.propagate = False

    # --- Step 2: Set the logging level for YOUR logger ---
    # This logger will now process any message of DEBUG severity or higher.
    app_logger.setLevel(
        getattr(
            logging,
            min(
                [level] + ([] if log_to_file is None else [file_log_level]),
                key=_LOG_LEVELS_URGENCY.get,
            ),
        )
    )

    if is_pre_clean:
        # while len(app_logger.handlers) > 0:
        #     h = app_logger.handlers[0]
        #     # dbg.debug('removing handler %s'%str(h))
        #     app_logger.removeHandler(h)
        #     # dbg.debug('%d more to go'%len(testLogger.handlers))
        app_logger.handlers.clear()

    handlers = []

    # --- Step 3: Create a StreamHandler to output to stderr for YOUR logger ---
    # This handler will specifically handle messages from 'app_logger'.
    app_console_handler = logging.StreamHandler(
        sys.stderr
    )  # or just logging.StreamHandler()
    # You can also set a level on the handler if you want it to be more restrictive
    # than the logger itself, but typically you want it to respect the logger's level.
    # app_console_handler.setLevel(logging.DEBUG)
    # --- Step 4: Create a Formatter for better message layout (Optional but recommended) ---
    formatter = logging.Formatter(log_format)
    app_console_handler.setFormatter(formatter)
    app_console_handler.setLevel(getattr(logging, level))
    handlers.append(app_console_handler)

    if log_to_file is not None:
        handler = logging.FileHandler(log_to_file, mode=file_mode)
        # Create a formatter and set it for the handler
        formatter = logging.Formatter(
            log_format if file_log_format is None else file_log_format
        )
        handler.setLevel(getattr(logging, file_log_level))
        handler.setFormatter(formatter)
        handlers.append(handler)

    # --- Step 5: Add the configured handler to YOUR logger ---
    for h in handlers:
        app_logger.addHandler(h)
    return app_logger


##
## END ^^ of `altp` copy section

if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    poor_mans_airflow(auto_envvar_prefix="POOR_MANS_AIRFLOW")
