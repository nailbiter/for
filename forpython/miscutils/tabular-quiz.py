#!/usr/bin/env python3
"""===============================================================================

        FILE: tabular-quiz.py

       USAGE: ./tabular-quiz.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2023-02-25T15:57:21.504707
    REVISION: ---

==============================================================================="""

import itertools
import logging
import webbrowser
import os
import re
import readline
from os import path
import alex_leontiev_toolbox_python.gdrive.spreadsheets
from alex_leontiev_toolbox_python.utils.db_wrap import DbCacheWrap
from alex_leontiev_toolbox_python.utils.click_format_dataframe import (
    build_click_options,
    format_df,
)
import click
import numpy as np
import pandas as pd
from _tabular_quiz.interactive_loop import InteractiveLoop
from _tabular_quiz.db_utils import Base, QuizScore
import random
import operator
from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker
import json
import json5

_df_to_json = operator.methodcaller("to_json", orient="columns")


@DbCacheWrap(
    f"sqlite:///{path.abspath(path.join(path.dirname(__file__),'.tabular_quiz.db'))}",
    ignore_kwargs={
        "creds",
    },
)
def download_spreadsheet(spreadsheet_id, kwargs, creds=None):
    df = (
        alex_leontiev_toolbox_python.gdrive.spreadsheets.download_df_from_google_sheets(
            creds,
            spreadsheet_id,
            **kwargs,
        )
    )
    return df.to_dict(orient="records")


def _exit(kwargs):
    kwargs["state"]["should_continue"] = False
    logging.warning("bye")


@click.group()
@click.option("-s", "--spreadsheet-id")
@click.option(
    "--google-spreadsheet-client-secret-path",
    type=click.Path(exists=True, dir_okay=False),
    default=path.join(path.dirname(__file__), "client_secret.json"),
)
@click.option(
    "-i",
    "--index-col",
    "index_cols",
    default=[
        0,
    ],
    multiple=True,
)
@click.option(
    "-d",
    "--dropout-rate",
    type=click.FloatRange(min=0, max=1, min_open=True, max_open=True),
    help="0 <==> show all; 1 <==> hide all; higher is harder",
    default=0.3,
)
@click.option("-c", "--col-order", multiple=True)
@click.option("-h", "--sheet-name")
@click.option(
    "--grade-db-sqlalchemy-string",
    default=f"""sqlite:///{path.abspath(path.join(path.dirname(__file__),".tabular_quiz.grade.db"))}""",
)
@click.option("-f", "--config-file", type=click.Path())
@click.option("-k", "--config-key")
@click.option("--debug/--no-debug", default=False)
@click.pass_context
def tabular_quiz(
    # spreadsheet_id,
    # google_spreadsheet_client_secret_path,
    # index_cols,
    # dropout_rate,
    # sheet_name,
    # col_order,
    ctx,
    config_file,
    config_key,
    debug,
    grade_db_sqlalchemy_string,
    **kwargs,
):
    """
    TODO:
        1(done). download spreadsheet
        2(done). hide
        3(done). receive input
        4(done). grade

    FEATURES:
        1(done). parser loop w/ `help`
        2(done?). cache tables (+ cache invalidation; + cache to package)
        3(done). save grades to db
        4(done). hint
    """
    if debug:
        logging.basicConfig(level=logging.INFO)

    creds = alex_leontiev_toolbox_python.gdrive.spreadsheets.get_creds(
        client_secret_file=kwargs["google_spreadsheet_client_secret_path"],
        create_if_not_exist=True,
    )

    ctx.ensure_object(dict)

    ctx.obj["creds"] = creds

    if config_file is None:
        ctx.obj["kwargs"] = kwargs
    else:
        with open(config_file) as f:
            config = json5.load(f)
        if config_key is None:
            ## show config keys
            click.echo(list(config["tests"]))
            exit(0)
        else:
            assert config_key in config["tests"], (config_key, list(config["tests"]))
            ctx.obj["kwargs"] = {**kwargs, **config["tests"][config_key]}

    engine = create_engine(grade_db_sqlalchemy_string, echo=False)
    ctx.obj["engine"] = engine
    _sessionmaker = sessionmaker(bind=engine)
    Base.metadata.create_all(engine)
    session = _sessionmaker()
    ctx.obj["session"] = session


@tabular_quiz.command()
@build_click_options
@click.pass_context
def list_scores(ctx, **kwargs):
    logging.warning(kwargs)
    session = ctx.obj["session"]

    df = pd.DataFrame(
        map(
            operator.methodcaller("to_dict"),
            session.query(QuizScore).order_by(QuizScore.creation_date.desc()),
        )
    )

    if kwargs["columns"]:
        logging.warning(df.columns)
        df = df[list(kwargs["columns"])]

    # df["obj"] = df.pop("obj_json").apply(json.loads)
    click.echo(df)


@tabular_quiz.command()
@click.pass_context
def open_url(ctx):
    spreadsheet_id = ctx.obj["kwargs"]["spreadsheet_id"]
    url = f"https://docs.google.com/spreadsheets/d/{spreadsheet_id}/edit#gid=0"
    webbrowser.open(url)


@tabular_quiz.command()
@click.pass_context
def test(ctx):
    spreadsheet_id = ctx.obj["kwargs"]["spreadsheet_id"]
    google_spreadsheet_client_secret_path = ctx.obj["kwargs"][
        "google_spreadsheet_client_secret_path"
    ]
    index_cols = ctx.obj["kwargs"]["index_cols"]
    dropout_rate = ctx.obj["kwargs"]["dropout_rate"]
    sheet_name = ctx.obj["kwargs"]["sheet_name"]
    col_order = ctx.obj["kwargs"]["col_order"]

    creds = ctx.obj["creds"]
    session = ctx.obj["session"]

    kwargs = {}
    if sheet_name is not None:
        kwargs["sheet_name"] = sheet_name
    df = pd.DataFrame(download_spreadsheet(spreadsheet_id, kwargs, creds=creds))
    if len(col_order) > 0:
        df = df[list(col_order)]
    idx = list(np.array(df.columns)[list(index_cols)])
    #    logging.warning(idx)
    df.set_index(idx, inplace=True)
    df.fillna("", inplace=True)

    assert df.index.is_unique, (df.index, click.echo(df))

    ## apply dropout
    answer_df = df
    question_df = df.copy()
    logging.warning(f'applying dropout "{dropout_rate}"')
    question_indexes = {
        i: None
        for i in (
            pd.Series(itertools.product(range(df.shape[0]), range(df.shape[1])))
            .sample(frac=dropout_rate)
            .to_list()
        )
    }
    for idx, (i, j) in enumerate(sorted(question_indexes)):
        question_df.iloc[i, j] = f"<q{idx}>"

    # repl
    loop = InteractiveLoop(prompt="edit_loop> ")
    loop.add_callback("exact", "exit", _exit)

    @loop(
        "regex",
        r"(\d+): (.*)",
    )
    def _process_answer(d):
        m = d["m"]

        idx, ans = int(m.group(1)), m.group(2).strip()
        i, j = sorted(question_indexes)[idx]
        logging.warning(f'accepting answer "{ans}" for q #{idx} {i,j}')
        question_indexes[i, j] = ans
        question_df.iloc[i, j] = f'<q{idx}: "{ans}">'

    @loop("exact", "grade")
    def _grade(d):
        for (i, j), ans in question_indexes.items():
            question_df.iloc[i, j] = ans
        grade = 1 - (answer_df != question_df).sum().sum() / len(question_indexes)

        question_df.fillna("", inplace=True)
        for (i, j), ans in question_indexes.items():
            question_df.iloc[i, j] = f'"{question_df.iloc[i,j]}"'
            true_ans = answer_df.iloc[i, j]
            if ans == true_ans:
                question_df.iloc[i, j] += " (C)"
            else:
                question_df.iloc[i, j] += f" (W[=`{true_ans}`])"
        click.echo(answer_df)
        click.echo(question_df)
        click.echo(f"grade: {100*grade:.2f}%")

        d["state"]["should_continue"] = False

        ## TODO: add to DB
        qs = QuizScore(
            google_spreadsheet_id=spreadsheet_id,
            grade=grade,
            dropout_rate=dropout_rate,
            obj={
                "answer_df": {
                    "json": _df_to_json(answer_df),
                    "index_names": list(answer_df.index.names),
                },
                "question_df": {
                    "json": _df_to_json(question_df),
                    "index_names": list(question_df.index.names),
                },
                "question_indexes": {json.dumps(k): v for k, v in d.items()},
            },
        )
        logging.info(f"logging quiz score {qs}")
        session.add(qs)
        session.commit()

    @loop("exact", "status")
    def _status(_):
        click.echo(
            f"answered: #{[idx for idx,k in enumerate(sorted(question_indexes)) if question_indexes[k] is not None]}"
        )
        click.echo(
            f"unanswered: #{[idx for idx,k in enumerate(sorted(question_indexes)) if question_indexes[k] is None]}"
        )

    @loop("exact", "hint")
    def _hint(_):
        unanswereds = [
            (idx, (i, j))
            for idx, (i, j) in enumerate(sorted(question_indexes))
            if question_indexes[i, j] is None
        ]
        if len(unanswereds) == 0:
            logging.warning("no unanswereds ==> ignore")
            return
        idx, (i, j) = random.choice(unanswereds)
        click.echo(f'#{idx}: "{answer_df.iloc[i,j]}"')

    @loop("fallback", None)
    def _fallback(d):
        logging.warning(f"unknown line \"{d['input_line']}\" ==> ignore")

    loop.add_pre_loop_callback(lambda _: click.echo(question_df))
    loop.loop()


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    tabular_quiz()
