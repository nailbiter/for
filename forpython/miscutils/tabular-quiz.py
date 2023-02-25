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

# from dotenv import load_dotenv
import os
import re
import readline
from os import path

import alex_leontiev_toolbox_python.gdrive.spreadsheets
import click
import numpy as np
import pandas as pd


@click.command()
@click.option("-s", "--spreadsheet-id", required=True)
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
    help="0 <==> show all; 1 <==> hide all;",
    default=0.3,
)
def tabular_quiz(
    spreadsheet_id, google_spreadsheet_client_secret_path, index_cols, dropout_rate
):
    """
    TODO:
        1. download spreadsheet
        2. hide
        3. receive input
        4. grade
    """
    creds = alex_leontiev_toolbox_python.gdrive.spreadsheets.get_creds(
        client_secret_file=google_spreadsheet_client_secret_path,
        create_if_not_exist=True,
    )
    df = (
        alex_leontiev_toolbox_python.gdrive.spreadsheets.download_df_from_google_sheets(
            creds, spreadsheet_id, sheet_name="unmerged"
        )
    )
    idx = list(np.array(df.columns)[list(index_cols)])
    #    logging.warning(idx)
    df.set_index(idx, inplace=True)
    df.fillna("", inplace=True)

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
    should_continue = True
    while should_continue:
        click.echo(question_df)

        s = input("edit_loop> ")
        s = s.strip()

        if s == "exit":
            should_continue = False
            click.echo("bye")
        elif (m := re.match(r"(\d+): (.*)", s)) is not None:
            idx, ans = int(m.group(1)), m.group(2).strip()
            i, j = sorted(question_indexes)[idx]
            logging.warning(f'accepting answer "{ans}" for q #{idx} {i,j}')
            question_indexes[i, j] = ans
            question_df.iloc[i, j] = f'<q{idx}: "{ans}">'
        elif s == "grade":
            for (i, j), ans in question_indexes.items():
                question_df.iloc[i, j] = ans
            grade = 1 - (answer_df != question_df).sum().sum() / len(question_indexes)

            question_df.fillna("", inplace=True)
            for (i, j), ans in question_indexes.items():
                question_df.iloc[i, j] = f'"{question_df.iloc[i,j]}"'
                if ans == answer_df.iloc[i, j]:
                    question_df.iloc[i, j] += " (C)"
                else:
                    question_df.iloc[i, j] += " (W)"
            click.echo(question_df)

            click.echo(f"grade: {100*grade:.2f}%")

            should_continue = False
        else:
            click.echo(f'unknown input "{s}" ==> ignore')


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    tabular_quiz()
