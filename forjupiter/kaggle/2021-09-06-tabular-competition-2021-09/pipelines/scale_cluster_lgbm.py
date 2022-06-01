"""===============================================================================

        FILE: /home/nailbiter/for/forjupiter/kaggle/2021-09-06-tabular-competition-2021-09/pipelines/scale_cluster_lgbm.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-09-18T05:26:44.612343
    REVISION: ---

==============================================================================="""

import lightgbm as lgbm
from sklearn.pipeline import Pipeline
import sklearn
import tempfile
from sklearn.compose import ColumnTransformer
import sklearn.impute
import sklearn.preprocessing
import sklearn.cluster

_IMPORTANT_FEATURES = ['f52', 'f47', 'f90', 'f18', 'f45', 'f68']


_cachedir = tempfile.mkdtemp()


def get_pipeline(kwargs):
    ppl = Pipeline(
        steps=[
            ("'preproc", ColumnTransformer(transformers=[
                (
                    "important",
                    Pipeline(
                        steps=[
                            ("impute", sklearn.impute.SimpleImputer(
                                strategy="most_frequent")),
                            ("scale", sklearn.preprocessing.StandardScaler()),
                            ("kmeans", sklearn.cluster.KMeans()),
                        ]
                    ),
                    _IMPORTANT_FEATURES,
                ),
                (
                    "rest",
                    sklearn.preprocessing.StandardScaler(),
                    [cn for cn in [f"f{i}"for i in range(
                        1, 119)] if cn not in _IMPORTANT_FEATURES],
                )
            ])),
            ("clf", lgbm.LGBMClassifier(**kwargs))
        ],
        memory=_cachedir,
    )
    return ppl


def get_search_space():
    # adapted from https://medium.com/optuna/lightgbm-tuner-new-optuna-integration-for-hyperparameter-optimization-8b7095e99258
    res = {
        'lambda_l1': ("loguniform", (1e-8, 10.0), {}),
        'lambda_l2': ("loguniform", (1e-8, 10.0), {}),
        'num_leaves': ("int", (2, 256), {}),
        'feature_fraction': ("uniform", (0.4, 1.0), {}),
        'bagging_fraction': ("uniform", (0.4, 1.0), {}),
        'bagging_freq': ("int", (1, 7), {}),
        'min_child_samples': ("int", (5, 100), {}),
    }
    return res


def get_signature():
    return None
