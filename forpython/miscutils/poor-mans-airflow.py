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


from dotenv import load_dotenv

moption = functools.partial(click.option, show_default=True, show_envvar=True)

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
</dict>
</plist>
"""
)

# after `StartCalendarInterval`'s /dict
# <key>StandardOutPath</key>
# <string>/tmp/my-daily-script.log</string>
# <key>StandardErrorPath</key>
# <string>/tmp/my-daily-script.log</string>


@click.group()
def poor_mans_airflow():
    pass


@poor_mans_airflow.command()
@moption("--home-dir", "-H", type=click.Path(), required=True)
def daily_run(home_dir):
    home_dir = path.abspath(home_dir)
    os.makedirs(home_dir, exist_ok=True)

    now = datetime.now()

    logger = get_configured_logger(
        "daily_run",
        log_to_file=path.join(home_dir, ".poor_mans_airflow.log.txt"),
        file_mode="a",
    )
    logger.info(f"started daily_run, now is `{now}`")


@poor_mans_airflow.command()
@moption("-m", "--mode", type=click.Choice(["launchd", "anacron"]), required=True)
@moption("-P", "--python-exec", default=sys.executable)
@moption("-H", "--hour", type=int, default=10)
@moption("-M", "--minute", type=int, default=0)
@moption(
    "--home-dir", type=click.Path(), default=f"{os.environ['HOME']}/.poor_mans_airflow"
)
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


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    poor_mans_airflow()
