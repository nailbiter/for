"""===============================================================================

        FILE: common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION:

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION:
     VERSION: ---
     CREATED: 2021-08-17T13:18:23.881828
    REVISION: ---

==============================================================================="""
import requests
import os
from os import path
import json
from datetime import datetime, timedelta
from git import Repo
import itertools
import pandas as pd
import numpy as np
import pandas as pd
import xgboost
from sklearn.model_selection import KFold, cross_val_score
import hashlib
import inspect
import types
from typing import cast
import logging
import sqlite3
import subprocess
from io import StringIO
import time
import inspect
import types
from typing import cast
import logging


# For ordinal encoding categorical variables, splitting data
from sklearn.preprocessing import OrdinalEncoder
from sklearn.model_selection import train_test_split

# For training random forest model
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error

COMPETITION_NAME = "tabular-playground-series-sep-2021"


def call_me(msg="hey!"):
    slack_webhook = os.environ["SLACK_WEBHOOK"]
    _ = requests.post(slack_webhook, json.dumps({
        "text": msg
    }),
        headers={
            "Content-type": "application/json"
    })


def _get_head_sha():
    _path = "."
    # FIXME: this probably can be done better
    while True:
        try:
            repo = Repo(_path)
            break
        except Exception:
            _path = path.join(_path, "..")
    assert not repo.bare
    head_commit = repo.head.commit
    assert(not head_commit.diff(None)
           ), "should be no changes on tree (do `git commit -a`)"
    return head_commit.hexsha, _path


def submit_prediction(submission_df, notebook_fn, mse, competition_name=COMPETITION_NAME, suff="", storage_name=".submissions.db", submission_date=datetime.now(), wait_for_submission_processing_sec=5):
    """
    TODO:
        1(done). save to db
        2(done). get real score
        3(done). get best score
    """
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(
        types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)
    logger.warning("do not forget to press Ctrl+S")
    try:
        sha, repo_path = _get_head_sha()
    except:
        logger.warning("auto-commit")
        os.system("git commit -a -m auto-commit; git push")
        sha, repo_path = _get_head_sha()

    relpath = path.relpath(notebook_fn, repo_path)
    url = f"https://github.com/nailbiter/for/blob/{sha}/{relpath}"

    now_ = datetime.now()
    r = {
        "submission_date": submission_date.isoformat(),
        "suff": suff,
        "notebook_fn": notebook_fn,
        "url": url,
        "competition_name": competition_name,
        "mse": mse,
        "real_submission_date": now_.isoformat(),
    }
    submission_hash = hashlib.sha256(json.dumps(
        r, sort_keys=True).encode()).hexdigest()
    logger.warning(f"submission hash: {submission_hash}")

    _fn = f".tmp/{now_.isoformat()}.csv"
    submission_df.to_csv(_fn, index=None)
    ec = os.system(
        f"kaggle competitions submit -c {competition_name} -f {_fn} -m \"{url} {submission_hash}\"")
    assert ec == 0
    time.sleep(wait_for_submission_processing_sec)

    r = {
        **r,
        "score": get_my_score(competition_name, submission_hash),
        "leader_score": get_best_score(competition_name),
    }
    _insert_record_in_submission_table(
        r, storage_name, submission_table_name="submissions")

    return submission_hash


def _insert_record_in_submission_table(r, storage_name, submission_table_name):
    conn = sqlite3.connect(storage_name)
    submission_records = []
    try:
        submissions_df = pd.read_sql_query(
            f"select * from {submission_table_name}", conn)
        submission_records = submissions_df.to_dict(orient="records")
    except pd.io.sql.DatabaseError:
        pass

    submissions_df = pd.DataFrame([*submission_records, r])
    submissions_df.to_sql('submissions', conn,
                          if_exists='replace', index=None)
    conn.close()


def get_submissions(storage_name=".submissions.db", show_leader_score=False):
    file_sqlite3 = storage_name
    conn = sqlite3.connect(file_sqlite3)
    df = pd.read_sql_query('SELECT * FROM submissions', conn)
    if not show_leader_score:
        df = df.drop(columns=["leader_score"])
    return df


def get_my_score(competition_name, submission_hash):
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(
        types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    res = subprocess.getoutput(
        f"kaggle competitions submissions -v \"{competition_name}\"")
    df = pd.read_csv(StringIO(res))
    df = df[[submission_hash in d for d in df.description]]
    assert len(df) > 0
    if len(df) > 1:
        logger.warning(f"len(df)={len(df)}>1")
    df.date = df.date.apply(lambda s: datetime.fromisoformat(s))
#    return df
    return float(df.publicScore.iloc[df.date.argmax()])


def get_best_score(competition_name, direction="max"):
    res = subprocess.getoutput(
        f"kaggle competitions leaderboard -v \"{competition_name}\" --show")
    df = pd.read_csv(StringIO(res))
    return {"max": max, "min": min}[direction](df.score)


def powerset(iterable):
    "powerset([1,2,3]) --> () (1,) (2,) (3,) (1,2) (1,3) (2,3) (1,2,3)"
    s = list(iterable)
    return itertools.chain.from_iterable(itertools.combinations(s, r) for r in range(len(s)+1))


def setup(competition_name=COMPETITION_NAME):
    # taken from https://stackoverflow.com/a/13514318
    this_function_name = cast(
        types.FrameType, inspect.currentframe()).f_code.co_name
    logger = logging.getLogger(__name__).getChild(this_function_name)

    if not path.isfile(f".data/{competition_name}.zip"):
        cmd = f"kaggle competitions download {competition_name} -p .data"
        logger.info(f"cmd: {cmd}")
        os.system(cmd)
    if not path.isdir(f".data/{competition_name}/"):
        logger.debug("not isdir")
        os.system(
            f"unzip .data/{competition_name}.zip -d .data/{competition_name}")
    else:
        logger.debug("isdir")
    # Load the training data
    X = pd.read_csv(f".data/{competition_name}/train.csv", index_col=0)
    X_test = pd.read_csv(f".data/{competition_name}/test.csv", index_col=0)
    y = X.pop("claim")
    assert set(X) == set(X_test)

    # Preview the data
    X.head()
    return X, y, X_test


def score_dataset(X, y, model=xgboost.XGBRegressor(), val=None, baseline=None, cross_val_score_kwargs={}):
    # Label encoding for categoricals
    #
    # Label encoding is good for XGBoost and RandomForest, but one-hot
    # would be better for models like Lasso or Ridge. The `cat.codes`
    # attribute holds the category levels.
    #    for colname in X.select_dtypes(["category"]):
    #        X[colname] = X[colname].cat.codes
    # Metric for Housing competition is RMSLE (Root Mean Squared Log Error)
    #     log_y = np.log(y)
    if val is None:
        score = cross_val_score(
            model, X, y, cv=5, scoring="roc_auc", **cross_val_score_kwargs,
        )
        score = score.mean()
    else:
        raise NotImplementedError()
        X_train, y_train = X, y
        X_valid, y_valid = val
        model.fit(
            X_train, y_train,
            early_stopping_rounds=5,
            eval_set=[(X_valid, y_valid)],
            verbose=False,
        )
        score = mean_squared_error(
            y_valid,
            model.predict(X_valid),
            squared=False
        )

    if baseline is None:
        return score
    else:
        return score, "good" if score > baseline else "not good"


def format_coverage(a, b, apply_len=False):
    if apply_len:
        a, b = len(a), len(b)
    return f"coverage = {a}/{b} = {a/b*100:04.2f}%"
