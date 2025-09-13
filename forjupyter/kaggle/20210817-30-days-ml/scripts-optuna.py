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


def _retrieve_pipeline(pipeline_name):
    m = importlib.import_module(f"pipelines.{pipeline_name}")
    pipeline, search_space, signature = m.get_pipeline(
    ), m.get_search_space(), m.get_signature()
    if signature is None:
        with open(f"pipelines/{pipeline_name}.py") as f:
            text = f.read()
        signature = hashlib.sha256(text.encode()).hexdigest()
    # FIXME: raise warning when signature changes
    return pipeline, search_space, signature


@scripts_optuna.command()
@click.option("-o", "--n-optuna-iterations", type=int, default=10)
@click.option("--submission-date", type=click.DateTime())
@click.option("-n", "--n-xgboost-jobs", type=int)
@click.option("--storage-name", type=click.Path(), default="sqlite:///.optuna.db")
@click.option("-p", "--pipeline-name", required=True)
@click.option("--scoring-type", default="cross_val")
@click.option("--load-study-if-exists/--no-load-study-if-exists", default=True)
def train_pipeline(n_optuna_iterations, submission_date, n_xgboost_jobs, storage_name, pipeline_name, scoring_type, load_study_if_exists):
    """
    FIXME: merge into train later
    """
    if submission_date is None:
        submission_date = datetime.now()
    FN = path.join(os.getcwd(), "20210822-optuna")
    STOPFILE_FN = f".optuna_{pipeline_name}.stopfile"

    X, y, X_test = common.setup()
    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)

    SCORINGS = common_scoring.get_scorings()
    SUBMISSION_DATE = submission_date

    # FIXME: cache the results

    _N_TRIALS = n_optuna_iterations
    # pbar = tqdm.notebook.tqdm(total=_N_TRIALS)
    _scoring = SCORINGS[scoring_type]
    _KWARGS = {}
    if n_xgboost_jobs is not None:
        _KWARGS["xgb__n_jobs"] = n_xgboost_jobs

    pipeline, search_space, signature = _retrieve_pipeline(pipeline_name)
    study_name = f"{pipeline_name}__{signature}"

    def objective(trial):
        if path.isfile(STOPFILE_FN):
            trial.study.stop()

        params = {k: getattr(trial, f"suggest_{ent}")(*args, **kwargs)
                  for k, (ent, args, kwargs) in search_space.items()}
        model = pipeline
        model.set_params(**params, **_KWARGS)
        return _scoring(model, X, y, X_train, y_train, X_valid, y_valid)

    if study_name is not None:
        study = optuna.create_study(
            study_name=study_name, storage=storage_name, load_if_exists=load_study_if_exists, direction="minimize")
    else:
        study = optuna.create_study(direction="minimize")

    tic = time.time()
    study.optimize(
        objective,
        n_trials=_N_TRIALS,
        show_progress_bar=True,
    )
    toc = time.time()
    best_params = study.best_params
    click.echo(f"best_params: {best_params}")
    best_value = study.best_value
    click.echo(f"best_value: {best_value}")
    best_fn = f".tmp/optuna_best_params_{SUBMISSION_DATE.isoformat()}.json"
    click.echo(f"best_fn: {best_fn}")
    with open(best_fn, "w") as f:
        json.dump({"best_params": best_params, "best_value": best_value, "pipeline": [pipeline_name, signature],
                   "n_optuna_iterations": n_optuna_iterations, "tictoc_seconds": toc-tic}, f, indent=2, sort_keys=True)

    common.call_me("optuna done")


@scripts_optuna.command()
@click.option("-o", "--n-optuna-iterations", type=int, default=10)
@click.option("--submission-date", type=click.DateTime())
@click.option("-n", "--n-xgboost-jobs", type=int)
@click.option("--storage-name", type=click.Path(), default="sqlite:///.optuna.db")
@click.option("-s", "--study-name", envvar="STUDY_NAME")
def train(n_optuna_iterations, submission_date, n_xgboost_jobs, storage_name, study_name):
    if submission_date is None:
        submission_date = datetime.now()
    FN = path.join(os.getcwd(), "20210822-optuna")
    STOPFILE_FN = ".optuna.stopfile"

    # In[3]:

    X, y, X_test = common.setup()
    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)

    # In[66]:

    SCORINGS = common_scoring.get_scorings()
    # SUBMISSION_DATE = datetime.now()
    SUBMISSION_DATE = submission_date

    # In[ ]:

    # FIXME: cache the results

    _N_TRIALS = n_optuna_iterations
    # pbar = tqdm.notebook.tqdm(total=_N_TRIALS)
    _scoring = SCORINGS["cross_val"]
    _KWARGS = {}
    if n_xgboost_jobs is not None:
        _KWARGS["n_jobs"] = n_xgboost_jobs

    def objective(trial):
        if path.isfile(STOPFILE_FN):
            trial.study.stop()

        xgb_params = dict(
            max_depth=trial.suggest_int("max_depth", 2, 10),
            #         learning_rate=trial.suggest_float("learning_rate", 1e-4, 1e-1, log=True),
            learning_rate=trial.suggest_float(
                "learning_rate", 1e-4, 0.3, log=True),
            #         n_estimators=trial.suggest_int("n_estimators", 1000, 8000),
            n_estimators=trial.suggest_int("n_estimators", 500, 10000),
            min_child_weight=trial.suggest_int("min_child_weight", 1, 10),
            colsample_bytree=trial.suggest_float("colsample_bytree", 0.2, 1.0),
            subsample=trial.suggest_float("subsample", 0.2, 1.0),
            reg_alpha=trial.suggest_float("reg_alpha", 1e-4, 1e2, log=True),
            reg_lambda=trial.suggest_float("reg_lambda", 1e-4, 1e2, log=True),
        )
        #     pbar.update(1)
        xgb = xgboost.XGBRegressor(**_KWARGS, **xgb_params)
        return _scoring(xgb, X, y, X_train, y_train, X_valid, y_valid)

    if study_name is not None:
        study = optuna.create_study(
            study_name=study_name, storage=storage_name, load_if_exists=True, direction="minimize")
    else:
        study = optuna.create_study(direction="minimize")

    tic = time.time()
    study.optimize(
        objective,
        n_trials=_N_TRIALS,
        show_progress_bar=True,
    )
    toc = time.time()
    best_params = study.best_params
    click.echo(f"best_params: {best_params}")
    best_value = study.best_value
    click.echo(f"best_value: {best_value}")
    best_fn = f".tmp/optuna_best_params_{SUBMISSION_DATE.isoformat()}.json"
    click.echo(f"best_fn: {best_fn}")
    with open(best_fn, "w") as f:
        json.dump({"best_params": best_params, "best_value": best_value,
                   "n_optuna_iterations": n_optuna_iterations, "tictoc_seconds": toc-tic}, f, indent=2, sort_keys=True)

    common.call_me("optuna done")


@scripts_optuna.command()
@click.option("-p", "--params-file", type=click.Path(), required=True)
def submit_pipeline(params_file):
    # FIXME: merge into submit later
    # TODO: create entry for every submission
    # FIXME: raise error if pipeline hash changes

    with open(params_file) as f:
        params = json.load(f)
    best_params, best_value, (pipeline_name,
                              saved_pipeline_signature) = params["best_params"], params["best_value"], params["pipeline"]
    model, _, _ = _retrieve_pipeline(pipeline_name)
#    print(model)
    # FIXME: make more robust
    model.set_params(**{f"xgb__{k}": v for k, v in best_params.items()})
    SUBMISSION_DATE = datetime.now()
    _PREDICTION_MODES = {
        k: v for k, v in common_prediction.get_prediction_methods().items() if k in ["full"]}

    X, y, X_test = common.setup()
    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)

    for tag, pm in tqdm.tqdm(list(_PREDICTION_MODES.items())):
        pred_df = pm(model, X, y, X_train, y_train, X_valid, y_valid, X_test)
        pred_fn = f".tmp/predictions_{tag}_{SUBMISSION_DATE.strftime('%Y%m%d')}_optuna.csv"
        pred_df.to_csv(pred_fn, index=None)
        common.submit_prediction(
            pred_fn,
            competition_name="30-days-of-ml",
            notebook_fn="/home/nailbiter/for/forjupiter/kaggle/20210817-30-days-ml/scripts-optuna.py",
            mse=best_value,
            suff="__".join([tag, params_file]),
        )

    _URL = "https://www.kaggle.com/c/30-days-of-ml/submissions"
#    webbrowser.get("firefox").open(_URL)
    print(_URL)


@scripts_optuna.command()
@click.option("-p", "--params-file", type=click.Path(), required=True)
def submit(params_file):
    # Use the model to generate predictions
    #    with open(best_fn, "w") as f:
    #        json.dump({"best_params": best_params, "best_value": best_value,
    #                   "n_optuna_iterations": n_optuna_iterations, "tictoc_seconds": toc-tic}, f, indent=2, sort_keys=True)
    with open(params_file) as f:
        params = json.load(f)
    xgb_params, best_value = params["best_params"], params["best_value"]
    # here we use the fact that xgboost is deterministic, cf. https://www.kaggle.com/devinanzelmo/done-done-2-more-efficient
    model = xgboost.XGBRegressor(**xgb_params)
    SUBMISSION_DATE = datetime.now()
    _PREDICTION_MODES = common_prediction.get_prediction_methods()

    X, y, X_test = common.setup()
    X_train, X_valid, y_train, y_valid = train_test_split(X, y, random_state=0)

    for tag, pm in tqdm.tqdm(list(_PREDICTION_MODES.items())):
        pred_df = pm(model, X, y, X_train, y_train, X_valid, y_valid, X_test)
        pred_fn = f".tmp/predictions_{tag}_{SUBMISSION_DATE.strftime('%Y%m%d')}_optuna.csv"
        pred_df.to_csv(pred_fn, index=None)
        common.submit_prediction(
            pred_fn,
            competition_name="30-days-of-ml",
            notebook_fn="/home/nailbiter/for/forjupiter/kaggle/20210817-30-days-ml/scripts-optuna.py",
            mse=best_value,
            suff=tag,
        )
#
    _URL = "https://www.kaggle.com/c/30-days-of-ml/submissions"
#    _URL
#    webbrowser.get("firefox").open(_URL)
    print(_URL)


if __name__ == "__main__":
    scripts_optuna()
