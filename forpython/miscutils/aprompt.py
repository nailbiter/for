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
    7. command: `agent`
    8. command: `vector database`
    9. module to flag "dangerous words" (possibly from 3rd e.g. mongo database) to maintain privacy
==============================================================================="""

import click
import os
from os import path
import logging
import functools
import typing
import itertools
import operator
import uuid
import json

from dotenv import load_dotenv
import pandas as pd
from jinja2 import Template

from _handy import collate_params, get_utils
from _aprompt.prompt_engines import get_prompt_engine, AVAILABLE_PROMPT_ENGINES
from _aprompt.cyborgs import (
    AUGMENTATION_PACKS,
    get_gemini_response_via_client,
    GEMINI_ENGINES_CONFIGS,
)
from _aprompt.gdrive_utils import (
    download_sheet_as_excel,
    authenticate,
    extract_sheet_id,
)

moption = functools.partial(click.option, show_default=True, show_envvar=True)
AVAILABLE_TEMPLATE_FORMATS = ["jinja2", "string_template"]
CLICK_OPTION_TPL_PARAMS = moption(
    "-p", "--param", "params", multiple=True, type=(str, str)
)


@click.group()
@moption("-T", "--engine-access-token", required=True)
@click.pass_context
def aprompt(ctx, engine_access_token):
    ctx.ensure_object(dict)
    ctx.obj["engine_access_token"] = engine_access_token


@aprompt.group(name="utils")
def util_cli_group():
    pass


@util_cli_group.command()
@click.option("--url", "-u", required=True)
@click.option("-S", "--sheet-name", "sheet_names", type=str, multiple=True)
def gsheet_to_json(url, sheet_names):
    logger = logging.getLogger("gsheet_to_json")
    logger.setLevel(logging.DEBUG)
    logger.addHandler(logging.StreamHandler())

    logger.debug("test")

    fn = download_sheet_as_excel(url, credentials=".gsheet_to_json-creds.json")
    if len(sheet_names) == 0:
        sheets = {"sheet": pd.read_excel(fn)}
    else:
        sheets = {pd.read_excel(fn, sheet_name=k) for k in sheet_names}

    logger.debug(sheets)
    click.echo(
        json.dumps(
            dict(
                sheets=[
                    dict(
                        sheet_name=sheet_name,
                        ## FIXME: this is dorky
                        sheet_content_json=json.loads(sheet.to_json(orient="records")),
                    )
                    for sheet_name, sheet in sheets.items()
                ]
            ),
            indent=2,
            sort_keys=True,
            ensure_ascii=False,
        ),
    )


@aprompt.command()
@click.option(
    "-a",
    "--augmentation",
    "augmentations",
    type=click.Choice(
        ["all", *AUGMENTATION_PACKS.keys()],
    ),
    multiple=True,
    default=["all"],
)
@click.option("-r", "--prompt")
@click.option("-P", "--prompt-file", type=click.Path())
@click.option(
    "-M",
    "--model",
    type=click.Choice(list(GEMINI_ENGINES_CONFIGS)),
    default="gemini-1.5-flash-latest",
)
@CLICK_OPTION_TPL_PARAMS
@click.pass_context
def cyborg(ctx, augmentations, prompt, model, params, prompt_file):
    """
    engine + function execution
    """
    augmentations = set(
        itertools.chain.from_iterable(
            map(lambda x: set(AUGMENTATION_PACKS) if x == "all" else {x}, augmentations)
        )
    )
    augmentations = list(
        itertools.chain.from_iterable(
            map(AUGMENTATION_PACKS.get, sorted(augmentations))
        )
    )
    s = pd.Series(map(operator.attrgetter("name"), augmentations))
    assert s.is_unique, s
    assert len(augmentations) > 0
    logging.warning(f"augmentations: {augmentations}")

    if prompt is None:
        with open(prompt_file) as f:
            tpl = Template(f.read())
    else:
        tpl = Template(prompt)
    env = dict(
        params=collate_params(params),
        # consts=dict(templates_dir=templates_dir),
        utils=get_utils(),
    )
    prompt = tpl.render(env)

    prompt = (
        f"{prompt.strip()}\n\nNote that the following tools are available to you:\n"
    )
    for augmentation in augmentations:
        prompt += (
            f"""* {augmentation.name} -- {augmentation.declaration['description']}\n"""
        )

    engine_access_token = ctx.obj["engine_access_token"]

    logging.warning(f"prompt:\n{prompt}")
    return get_gemini_response_via_client(
        user_prompt=prompt,
        api_key=engine_access_token,
        augmentations=augmentations,
        model_name=model,
        detailed_log_file=f"/tmp/{uuid.uuid4()}.log.txt",
        **GEMINI_ENGINES_CONFIGS[model],
    )


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
    "-f",
    "--template-filename",
    type=click.Path(),
    required=False,
    help="relative if `--templates-dir` is given; if not given, simply list models available",
)
@CLICK_OPTION_TPL_PARAMS
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
@click.pass_context
def single_prompt(
    ctx,
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
    debug,
    engine_configuration_kwargs,
):
    """single prompt execution"""

    engine_access_token = ctx.obj["engine_access_token"]

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
            template_format = {
                ".jinja.txt": "jinja2",
                ".jinja.md": "jinja2",
                ".txt": "string_template",
            }[ext]
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
            env = dict(
                params=collate_params(params),
                consts=dict(templates_dir=templates_dir),
                utils=get_utils(),
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


if __name__ == "__main__":
    for fn in [".env", ".env.checked", ".aprompt.env"]:
        if path.isfile(fn):
            logging.warning(f"loading `{fn}`")
            load_dotenv(dotenv_path=fn, override=True)
    aprompt(auto_envvar_prefix="APROMPT")
