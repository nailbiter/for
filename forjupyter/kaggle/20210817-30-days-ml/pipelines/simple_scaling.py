"""===============================================================================

        FILE: pipelines/simple_scaling.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-08-28T13:07:22.240032
    REVISION: ---

==============================================================================="""
from sklearn.compose import ColumnTransformer
from sklearn.datasets import fetch_openml
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split, GridSearchCV
import xgboost


def get_pipeline():
    numeric_features = [f"cont{i}" for i in range(14)]
    numeric_transformer = Pipeline(steps=[
        ('imputer', SimpleImputer(strategy='median')),
        ('scaler', StandardScaler())])

    categorical_features = [f"cat{i}" for i in range(10)]
# categorical_transformer = OneHotEncoder(handle_unknown='ignore')

    preprocessor = ColumnTransformer(
        transformers=[
            ('num', numeric_transformer, numeric_features),
            ('cat', "passthrough", categorical_features),
        ]
    )

# Append classifier to preprocessing pipeline.
# Now we have a full prediction pipeline.
    clf = Pipeline(
        steps=[
            ('preprocessor', preprocessor),
            ('xgb', xgboost.XGBRegressor()),
        ]
    )
    return clf

# mse = -cross_val_score(clf,scf(X),y,cv=5,scoring="neg_mean_squared_error").mean()
# mse
# X
# pd.DataFrame(data=clf.fit_transform(X),columns=list(X))
#    common.score_dataset(X, y, model=clf, baseline=baseline)


def get_search_space():
    res = dict(
        max_depth=("int", ("max_depth", 2, 10), {}),
        learning_rate=("float", ("learning_rate", 1e-4, 0.3), {"log": True}),
        n_estimators=("int", ("n_estimators", 500, 10000), {}),
        min_child_weight=("int", ("min_child_weight", 1, 10), {}),
        colsample_bytree=("float", ("colsample_bytree", 0.2, 1.0), {}),
        subsample=("float", ("subsample", 0.2, 1.0), {}),
        reg_alpha=("float", ("reg_alpha", 1e-4, 1e2, ), {"log": True}),
        reg_lambda=("float", ("reg_lambda", 1e-4, 1e2, ), {"log": True}),
    )
    return {f"xgb__{k}": v for k, v in res.items()}


def get_signature():
    return None
