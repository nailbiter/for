#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/aprompt.py

       USAGE: .//Users/nailbiter/for/forpython/aprompt.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-01-26T12:50:30.958685
    REVISION: ---

TODO:
    1. caching
    2. logging
    3(d). show models
    4. callbacks from prompt: post-processing
    5. callbacks from prompt: override gemini params (opt.: specify model, over- or no-override)
    6. in `logging.warning`, print `prompt` with whitespaces and newlines shown
==============================================================================="""

import click
from dotenv import load_dotenv
import os
from os import path
import logging
import functools
from _aprompt.prompt_engines import get_prompt_engine, AVAILABLE_PROMPT_ENGINES

moption = functools.partial(click.option, show_default=True, show_envvar=True)
AVAILABLE_TEMPLATE_FORMATS = ["jinja2", "string_template"]


@click.group()
def aprompt():
    pass


@aprompt.command(name="p")
@moption(
    "--logging-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.log.sqlite3")),
)
@moption(
    "--cache-config",
    type=(click.Choice(["none", "sqlite3", "jsonl"]), str),
    default=("sqlite3", path.join(path.dirname(__file__), ".aprompt.cache.sqlite3")),
)
@moption(
    "--templates-dir",
    type=click.Path(exists=True, dir_okay=True, file_okay=False),
)
@moption(
    "-t",
    "--template-filename",
    type=click.Path(),
    required=False,
    help="relative if `--templates-dir` is given; if not given, simply list models available",
)
@moption("-p", "--param", "params", multiple=True, type=(str, str))
@moption(
    "--template-format",
    type=click.Choice([*AVAILABLE_TEMPLATE_FORMATS, "auto"]),
    default="auto",
)
@moption(
    "-P", "--post-processor", "post_processors", multiple=True, type=click.Choice([])
)
@moption(
    "-E",
    "--prompt-engine",
    type=click.Choice(sorted(AVAILABLE_PROMPT_ENGINES.keys())),
    required=True,
)
@moption("-T", "--engine-access-token", required=True)
@moption(
    "-K",
    "--engine-configuration-kwarg",
    "engine_configuration_kwargs",
    multiple=True,
    type=(str, str),
)
@moption("--debug/--no-debug", "-D/ ", default=False)
@moption("--click-fg", type=str)
@moption("-S", "--prompt-engine-seed")
@moption("--dry-run/--no-dry-run", default=False)
def single_prompt(
    dry_run,
    prompt_engine_seed,
    click_fg,
    logging_config,
    cache_config,
    templates_dir,
    params,
    template_filename,
    template_format,
    post_processors,
    prompt_engine,
    engine_access_token,
    debug,
    engine_configuration_kwargs,
):
    my_log_warning = logging.warning if debug else (lambda x: x)

    prompt_engine = get_prompt_engine(
        prompt_engine,
        engine_access_token,
        **{**dict(list(engine_configuration_kwargs)), "is_loud": debug},
    )

    if template_filename is None:
        click.echo(prompt_engine.list_models().to_csv(sep="\t"))
    else:
        if templates_dir is None:
            templates_dir, _ = path.split(path.abspath(template_filename))
        else:
            template_filename = path.join(templates_dir, template_filename)
        my_log_warning(
            dict(templates_dir=templates_dir, template_filename=template_filename)
        )
        assert path.isfile(template_filename), template_filename
        assert path.isdir(templates_dir), templates_dir
        if template_format == "auto":
            ## FIXME: fragile (but works for now)
            i = template_filename.index(".")
            ext = template_filename[i:]
            my_log_warning(dict(ext=ext))
            template_format = {".jinja.txt": "jinja2", ".txt": "string_template"}[ext]
            assert template_format in AVAILABLE_TEMPLATE_FORMATS, (
                template_format,
                AVAILABLE_TEMPLATE_FORMATS,
            )
        my_log_warning(
            dict(
                templates_dir=templates_dir,
                template_filename=template_filename,
                template_format=template_format,
            )
        )

        prompt = None
        if template_format == "jinja2":
            from jinja2 import Template, Environment, FileSystemLoader

            jinja_env = Environment(loader=FileSystemLoader(templates_dir))
            rp = path.relpath(template_filename, templates_dir)
            # my_log_warning(dict(rp=rp))
            template = jinja_env.get_template(rp)
            params = dict(list(params))
            env = dict(
                params=params,
                consts=dict(templates_dir=templates_dir),
                utils=dict(load_file=load_file),
            )
            my_log_warning(env)
            prompt = template.render(**env)
        else:
            raise NotImplementedError(dict(template_format=template_format))
        my_log_warning(f"prompt: \n```\n{prompt}\n```")

        echo, echo_kwargs = click.echo, {}
        if click_fg is not None:
            echo = click.secho
            echo_kwargs["fg"] = click_fg

        if dry_run:
            logging.warning("dry run")
            echo(prompt, **echo_kwargs)
        else:
            reply = prompt_engine.prompt(prompt)
            echo(reply, **echo_kwargs)


def load_file(filename: typing.Optional[str]) -> str:
    if filename is None:
        return None
    else:
        with click.open_file(filename) as f:
            return f.read()


if __name__ == "__main__":
    fn = ".env"
    if path.isfile(fn):
        logging.warning(f"loading `{fn}`")
        load_dotenv(dotenv_path=fn)
    aprompt(auto_envvar_prefix="APROMPT")
