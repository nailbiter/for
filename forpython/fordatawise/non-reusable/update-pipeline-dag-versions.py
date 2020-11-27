#!/usr/bin/env python3
"""===============================================================================

        FILE: fordatawise/non-reusable/update_pipeline_dag_versions.py

       USAGE: ./fordatawise/non-reusable/update_pipeline_dag_versions.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-27T12:01:01.693036
    REVISION: ---

TODO:
    1. dry-run and show file replacements to be done via `DiffLib`
==============================================================================="""

import click
import os
from os import path
import logging
from subprocess import getoutput
import re
import itertools

_ENVIRONMENTS = ["olm-dev", "olm-prd"]

_DAG_VERSIONS = {
    "distinguish_stay_and_move": 5,
    "estimate_home_and_work": 6,
    "estimate_total_population_docomo": 5,
    "filter": 3
}

def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f

@_add_logger
def _system(cmd,logger):
    logger.info(f"> {cmd}")
    os.system(cmd)

@click.command()
@click.option("--debug/--no-debug", default=True)
def update_pipeline_dag_versions(debug):
    if debug:
        logging.basicConfig(level=logging.INFO)

    cwd = os.getcwd()
    assert path.split(
        cwd)[-1] == "composer", "script should be executed from `pipeline/composer`"

    _DAG_DIR = "../dags"
    dags_list = getoutput(f"ls {_DAG_DIR}").split("\n")
    dags_list = [fn.strip() for fn in dags_list]
    dags_list = [fn for fn in dags_list if fn.endswith(".py")]
    for k,v in _DAG_VERSIONS.items():
        tgt = f"{k}{v}.py"
        cmd = f"git mv {_DAG_DIR}/{k}*.py {_DAG_DIR}/{tgt}"
        if tgt not in dags_list:
            _system(cmd)
        else:
            logging.info(f"skip `{cmd}`")

    _SQL_DIR = "../dags/sql"
    dags_list = getoutput(f"ls {_SQL_DIR}").split("\n")
    dags_list = [fn.strip() for fn in dags_list]
    for k,v in _DAG_VERSIONS.items():
        tgt = f"{k}{v}"
        cmd = f"git mv {_SQL_DIR}/{k}* {_SQL_DIR}/{tgt}"
        if tgt not in dags_list:
            _system(cmd)
        else:
            logging.info(f"skip `{cmd}`")

    for k,v in _DAG_VERSIONS.items():
        fn = path.join(_DAG_DIR,f"{k}{v}.py")
        with open(fn) as f:
            content = f.read()
        for k_,v_ in _DAG_VERSIONS.items():
            content = re.sub(r"\b"+k_+r"\d+\b",f"{k_}{v_}",content)
        with open(fn,"w") as f:
            f.write(content)

    for dir_,fn_ in itertools.product(_ENVIRONMENTS,["bigquery.json","pool.json","variables.json"]):
        fn = path.join(dir_,fn_)
        with open(fn) as f:
            content = f.read()
        for k_,v_ in _DAG_VERSIONS.items():
            content = re.sub(r"\b"+k_+r"\d+\b",f"{k_}{v_}",content)
        if fn_=="variables.json":
            for k_,v_ in _DAG_VERSIONS.items():
                content = re.sub(r"\b"+k_+r"\d+_config\b",f"{k_}{v_}_config",content)
            content = re.sub(r"\bfilter\d+_staymove\d+_homework\d+_total\d+\b",f"filter{_DAG_VERSIONS['filter']}_staymove{_DAG_VERSIONS['distinguish_stay_and_move']}_homework{_DAG_VERSIONS['estimate_home_and_work']}_total{_DAG_VERSIONS['estimate_total_population_docomo']}",content)
        with open(fn,"w") as f:
            f.write(content)

if __name__ == "__main__":
    update_pipeline_dag_versions()
