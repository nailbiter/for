"""===============================================================================

        FILE: pipelines/xgb.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-09-08T12:42:05.611869
    REVISION: ---

==============================================================================="""

import xgboost
from sklearn.pipeline import Pipeline


def get_pipeline(kwargs):
    _KWARGS = {}
#    _KWARGS["tree_method"] = "gpu_hist"
    return xgboost.XGBClassifier(**kwargs, **_KWARGS, objective="binary:logistic", use_label_encoder=False)


# mse = -cross_val_score(clf,scf(X),y,cv=5,scoring="neg_mean_squared_error").mean()
# mse
# X
# pd.DataFrame(data=clf.fit_transform(X),columns=list(X))
#    common.score_dataset(X, y, model=clf, baseline=baseline)


def get_search_space():
    res = dict(
        max_depth=("int", (2, 10), {}),
        learning_rate=("float", (1e-4, 0.3), {"log": True}),
        n_estimators=("int", (500, 10000), {}),
        min_child_weight=("int", (1, 10), {}),
        colsample_bytree=("float", (0.2, 1.0), {}),
        subsample=("float", (0.2, 1.0), {}),
        reg_alpha=("float", (1e-4, 1e2, ), {"log": True}),
        reg_lambda=("float", (1e-4, 1e2, ), {"log": True}),
    )
    return res


def get_signature():
    return None
