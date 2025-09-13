"""===============================================================================

        FILE: common_prediction.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION:

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION:
     VERSION: ---
     CREATED: 2021-08-22T22:53:26.585339
    REVISION: ---

==============================================================================="""
import pandas as pd


def _only_training(model, X, y, X_train, y_train, X_val, Y_val, X_test):
    model.fit(
        X_train, y_train,
        early_stopping_rounds=5,
        eval_set=[(X_val, Y_val)],
        verbose=False,
    )
    predictions = model.predict(X_test)
    return pd.DataFrame({
        'Id': X_test.index,
        'target': predictions
    })


def _full(model, X, y, X_train, y_train, X_val, Y_val, X_test):
    model.fit(X, y)
    predictions = model.predict(X_test)
    return pd.DataFrame({
        'Id': X_test.index,
        'target': predictions
    })


def get_prediction_methods():
    """
    all functions will have sig
    (model,X,y,X_train,y_train,X_val,Y_val,X_test) -> prediction (pd.DataFrame)
    """
    return {
        "only_training": _only_training,
        "full": _full,
    }
