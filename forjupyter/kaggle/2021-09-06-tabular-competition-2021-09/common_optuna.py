"""===============================================================================

        FILE: ./common_optuna.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-09-19T22:32:26.647910
    REVISION: ---

==============================================================================="""
import importlib
import hashlib


def retrieve_pipeline(pipeline_name):
    m = importlib.import_module(f"pipelines.{pipeline_name}")
    get_pipeline, search_space, signature = m.get_pipeline, m.get_search_space(), m.get_signature()
    if signature is None:
        with open(f"pipelines/{pipeline_name}.py") as f:
            text = f.read()
        signature = hashlib.sha256(text.encode()).hexdigest()
    # FIXME: raise warning when signature changes
    return get_pipeline, search_space, signature
