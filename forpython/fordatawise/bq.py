#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/bq.py

       USAGE: .//Users/nailbiter/for/forpython/fordatawise/bq.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-24T15:39:11.331208
    REVISION: ---

==============================================================================="""

import click
from google.cloud import bigquery
from pymongo import MongoClient
from datetime import datetime
import logging


_SAVE_RESULTS_MAX_RECORD_NUM = 1000

@click.group()
def bq():
    pass

def _log_sql_to_mongo(sql,bq_client,df=None):
    mongo_client = MongoClient()
    bytes_processed = bq_client.query(sql,job_config=bigquery.QueryJobConfig(dry_run=True,use_cache=False)).total_bytes_processed
    if df is not None and len(df)>_SAVE_RESULTS_MAX_RECORD_NUM:
        logging.warning(f"response has more records than we can store ({len(df)}>{_SAVE_RESULTS_MAX_RECORD_NUM}) => truncating")
    mongo_client.datawise.bq_query_log.insert_one({"sql":sql,"date":datetime.now(),"res":df if df is None else df.to_dict(orient="records")[:_SAVE_RESULTS_MAX_RECORD_NUM],"bytes_processed":bytes_processed})

@bq.command()
@click.argument("fn",type=click.Path())
@click.option("-p","--project")
@click.option("-o","--oformat",type=click.Choice(["csv"]),default="csv")
def query(fn,project,oformat):
    bq_client_kwargs = {}
    if project is not None:
        bq_client_kwargs["project"] = project
    bq_client = bigquery.Client(**bq_client_kwargs)
    with open(fn) as f:
        sql = f.read()
    df = bq_client.query(sql).to_dataframe(progress_bar_type="tqdm")

    if oformat=="csv":
        print(df.to_csv(index=None))
    else:
        raise NotImplementedError

    _log_sql_to_mongo(sql,bq_client,None)

if __name__=="__main__":
    bq()
