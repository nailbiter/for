"""===============================================================================

        FILE: ./common_scoring.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-08-22T19:54:23.295488
    REVISION: ---

==============================================================================="""
import numpy as np
import pandas as pd

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
import common


def _cross_val(model, X, y, *_, cross_val_score_kwargs={}):
    return common.score_dataset(X,y,model=model,cross_val_score_kwargs=cross_val_score_kwargs)
#    return -cross_val_score(
#        model,
#        X, y,
#        cv=5,
#        scoring="neg_root_mean_squared_error",
#    ).mean()


def _train_val(model, X, y, X_train, y_train, X_valid, y_valid):
    model.fit(
        X_train, y_train,
        early_stopping_rounds=5,
        eval_set=[(X_valid, y_valid)],
        verbose=False,
    )
    mse = mean_squared_error(
        y_valid,
        model.predict(X_valid),
        squared=False
    )
    return mse


def get_scorings():
    """
    every scoring is function with signature
    (model,X,y,X_train,y_train,X_val,Y_val) -> loss (to minimize)
    """
    return {
        "cross_val": _cross_val,
        "train_val": _train_val,
    }
