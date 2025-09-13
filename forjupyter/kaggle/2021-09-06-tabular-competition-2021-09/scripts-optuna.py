#!/usr/bin/env python3
"""===============================================================================

        FILE: ./scripts-optuna.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION:

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991gmail.com)
ORGANIZATION:
     VERSION: ---
     CREATED: 2021-08-23T23:03:32.255002
    REVISION: ---

FIXME:
    1(done). continuous logging in file
    2. refactor
    3. save tictoc
==============================================================================="""

import click
import importlib
import numpy as np
import pandas as pd
import json
import time
import logging
import pipelines
import hashlib
import re
import inspect
import types
from typing import cast
import logging

# For ordinal encoding categorical variables, splitting data
from sklearn.preprocessing import OrdinalEncoder
from sklearn.model_selection import train_test_split, cross_val_score

# For training random forest model
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error

import os
from os import path
import random
# import zipfile
import tqdm
import seaborn as sns
import matplotlib.pyplot as plt
import xgboost
from datetime import datetime, timedelta
import itertools
import json
import functools
import time
import logging
import optuna
import webbrowser
import common
import common_scoring
import common_prediction
from common_optuna import retrieve_pipeline


@click.group()
@click.option("-l", "--log-file", type=click.Path())
def scripts_optuna(log_file):
    logging_kwargs = {"handlers": [logging.StreamHandler(), ], }
#    if debug:
#        logging_kwargs = {**logging_kwargs, "level": logging.INFO}
    if log_file is not None:
        optuna.logging.enable_propagation()
        _handler = logging.FileHandler(log_file)
        _handler.setLevel(logging.INFO)
        logging_kwargs["handlers"].append(_handler)
    logging.basicConfig(**logging_kwargs)




@scripts_optuna.command()
@click.option("--storage-name", type=click.Path())
@click.option("-p", "--pipeline-name", required=True)
def stop(storage_name, pipeline_name):
    """
    FIXME: merge into train later
    """
    STOPFILE_FN = f".optuna_{pipeline_name}.stopfile"
    os.system(f"touch {STOPFILE_FN}")


@scripts_optuna.command()
@click.option("-o", "--n-optuna-iterations", type=int, default=10)
@click.option("--submission-date", type=click.DateTime())
@click.option("-x", "--n-xgboost-jobs", type=int)
@click.option("-v", "--n-crossval-jobs", type=int)
@click.option("--storage-name", type=click.Path())
@click.option("-p", "--pipeline-name", required=True)
# @click.option("--scoring-type", default="cross_val")
@click.option("--load-study-if-exists/--no-load-study-if-exists", default=True)
def run(n_optuna_iterations, submission_date, n_xgboost_jobs, storage_name, pipeline_name, load_study_if_exists, n_crossval_jobs):
    """
    FIXME: merge into train later
    """
    scoring_type = "cross_val"
    if submission_date is None:
        submission_date = datetime.now()
    timestamp = datetime.now()
    STOPFILE_FN = f".optuna_{pipeline_name}.stopfile"
    # , default="sqlite:///.optuna.db"

    X, y, X_test = common.setup()
    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)

    SCORINGS = common_scoring.get_scorings()
    SUBMISSION_DATE = submission_date

    # FIXME: cache the results

    _N_TRIALS = n_optuna_iterations
    # pbar = tqdm.notebook.tqdm(total=_N_TRIALS)
    _scoring = SCORINGS[scoring_type]
    _XGBOOST_KWARGS = {}
    if n_xgboost_jobs is not None:
        _XGBOOST_KWARGS["xgb__n_jobs"] = n_xgboost_jobs
    cross_val_score_kwargs = {}
    if n_crossval_jobs is not None:
        cross_val_score_kwargs["n_jobs"] = n_crossval_jobs

    get_pipeline, search_space, signature = retrieve_pipeline(pipeline_name)
    study_name = f"{pipeline_name}__{signature}"
    if storage_name is None:
        storage_name = f"sqlite:///.optuna_{pipeline_name}.db"

    def objective(trial):
        if path.isfile(STOPFILE_FN):
            trial.study.stop()

        params = {k: getattr(trial, f"suggest_{ent}")(k, *args, **kwargs)
                  for k, (ent, args, kwargs) in search_space.items()}
        model = get_pipeline(params)
        return _scoring(model, X, y, X_train, y_train, X_valid, y_valid, cross_val_score_kwargs=cross_val_score_kwargs)

    if study_name is not None:
        study = optuna.create_study(
            study_name=study_name, storage=storage_name, load_if_exists=load_study_if_exists, direction="maximize")
    else:
        study = optuna.create_study(direction="maximize")

    study.optimize(
        objective,
        n_trials=_N_TRIALS,
        show_progress_bar=True,
    )

    fn = f".tmp/optuna_results_{pipeline_name}_{timestamp.isoformat()}.csv"
    print(f"results will be saved to {fn}")
    trials_df = study.trials_dataframe()
    trials_df["study_hash"] = signature
    trials_df.to_csv(fn, index=None)

    common.call_me("optuna done")


@scripts_optuna.command()
@click.option("-r", "--optuna-results-file", type=click.Path(), required=True)
@click.option("--submission-date",type=click.DateTime(),default=datetime.now())
def submit(optuna_results_file,submission_date):
    # FIXME: raise error if pipeline hash changes

    #taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    m = re.match(
        r"^.tmp/optuna_results_([a-z0-9_]+)_\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{6}\.csv$", optuna_results_file)
    assert m is not None, m

    pipeline_name = m.group(1)
    logger.info(f"pipeline_name: {pipeline_name}")
    optuna_results_df = pd.read_csv(optuna_results_file)
    assert optuna_results_df.study_hash.nunique()==1,list(optuna_results_df.study_hash.unique())
    get_pipeline, search_space, signature = retrieve_pipeline(pipeline_name)
    assert signature==optuna_results_df.study_hash.iloc[0]

    best_params = optuna_results_df.to_dict(orient="records")[optuna_results_df.value.argmax()]
    mse = best_params["value"]
    best_params = {k[len("params_"):]:v for k,v in best_params.items() if k.startswith("params_")}

    ppl = get_pipeline(best_params)

    _PREDICTION_MODES = common_prediction.get_prediction_methods()
    X, y, X_test = common.setup()
#    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)
#
    for tag, pm in tqdm.tqdm(list(_PREDICTION_MODES.items())):
        submission_df = pm(ppl,X,y,None,None,None,None,X_test)

        submission_hash = common.submit_prediction(
            submission_df=submission_df,
            notebook_fn=__file__,
            mse=mse,
            submission_date=submission_date,
            suff=str((ppl,best_params)),
        )

    _URL = f"https://www.kaggle.com/c/{common.COMPETITION_NAME}/submissions"
    webbrowser.get("firefox").open(_URL)
    print(_URL)


if __name__ == "__main__":
    scripts_optuna()
