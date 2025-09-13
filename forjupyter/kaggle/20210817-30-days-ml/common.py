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
import logging
import itertools
import pandas as pd
import numpy as np
import pandas as pd
import xgboost
from sklearn.model_selection import KFold, cross_val_score

# For ordinal encoding categorical variables, splitting data
from sklearn.preprocessing import OrdinalEncoder
from sklearn.model_selection import train_test_split

# For training random forest model
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error


def call_me(msg):
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


def submit_prediction(fn, competition_name, notebook_fn, mse, suff=""):
    """
    TODO: save to db
    """
    logger = logging.getLogger(__name__)
    try:
        sha, repo_path = _get_head_sha()
    except:
        logger.warning("auto-commit")
        os.system("git commit -a -m auto-commit; git push")
        sha, repo_path = _get_head_sha()

#    print(relpath)
    relpath = path.relpath(notebook_fn, repo_path)
    url = f"https://github.com/nailbiter/for/blob/{sha}/{relpath}"
#    print(url)
    os.system(
        f"kaggle competitions submit -c {competition_name} -f {fn} -m \"{datetime.now().isoformat()} {url} {mse} {suff}\"")


def powerset(iterable):
    "powerset([1,2,3]) --> () (1,) (2,) (3,) (1,2) (1,3) (2,3) (1,2,3)"
    s = list(iterable)
    return itertools.chain.from_iterable(itertools.combinations(s, r) for r in range(len(s)+1))


def setup():
    if not path.isfile(".data/30-days-of-ml.zip"):
        os.system("kaggle competitions download -c 30-days-of-ml")
    if not path.isdir(".data/30-days-of-ml/"):
        os.system("unzip .data/30-days-of-ml.zip -d .data/30-days-of-ml")

    # Load the training data
    train = pd.read_csv(".data/30-days-of-ml/train.csv", index_col=0)
    test = pd.read_csv(".data/30-days-of-ml/test.csv", index_col=0)

    # Preview the data
    train.head()

    # Separate target from features
    y = train['target']
    features = train.drop(['target'], axis=1)

    # Preview features
    features.head()

    # List of categorical columns
    object_cols = [col for col in features.columns if 'cat' in col]

    # ordinal-encode categorical columns
    X = features.copy()
    X_test = test.copy()
    ordinal_encoder = OrdinalEncoder()
    X[object_cols] = ordinal_encoder.fit_transform(features[object_cols])
    X_test[object_cols] = ordinal_encoder.transform(test[object_cols])

    # Preview the ordinal-encoded features
    X.head()

    return X, y, X_test


def score_dataset(X, y, model=xgboost.XGBRegressor(), val=None, baseline=None):
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
            model, X, y, cv=5, scoring="neg_mean_squared_error",
        )
        score = -1 * score.mean()
        score = np.sqrt(score)
    else:
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
        return score, "good" if score < baseline else "not good"
