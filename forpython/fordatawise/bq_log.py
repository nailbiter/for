#!/usr/bin/env python3
"""===============================================================================

        FILE: ./fordatawise/bq_log.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-25T15:21:49.650929
    REVISION: ---

==============================================================================="""

import click
from google.cloud import bigquery
import pandas as pd
from datetime import datetime, timedelta
from google.cloud import bigquery
from google.oauth2.credentials import Credentials
from pymongo import MongoClient
import os


_PROJECTS = [
    "olm-1-datawarehouse-dev", 
    "olm-limited-access",
    "olm-datamart-prd"
]
@click.command()
@click.option("--start-date", type=click.DateTime())
@click.option("--slack/--no-slack", default=False)
@click.option("--slack-webhook")
@click.option("--bigquery-credentials", type=click.Path(), default="/Users/nailbiter/.config/gcloud/legacy_credentials/dtws_oleksii_leontiev@oaklawn.co.jp/adc.json")
@click.option("--project", type=click.Choice(_PROJECTS), multiple=True)
def bq_log(start_date, slack, slack_webhook, bigquery_credentials, project):
    if len(project)==0:
        project = _PROJECTS
    if start_date is None:
        start_date = datetime.now()
    if slack_webhook is None:
        mongo_client = MongoClient()
        slack_webhook = mongo_client.admin.passwords.find_one(
            {"key": "SLACK_DATAWISE_BQ_NOTIFICATION_WEBHOOK"})["value"]
    _credentials = Credentials.from_authorized_user_file(
        filename=bigquery_credentials)
    client = bigquery.Client(credentials=_credentials,project="olm-limited-access")
    df = pd.concat([
        pd.DataFrame([
            {
                "total_bytes_processed":j.total_bytes_processed, 
                "created": j.created+timedelta(hours=9), 
                "project": j.project,
                "state":j.state, 
                "job_type":j.job_type,
            }
            for j
            # in client.list_jobs(project="olm-limited-access", state_filter="done", max_results=100)
            in client.list_jobs(project=project_, state_filter="done", min_creation_time=datetime(start_date.year, start_date.month, start_date.day))
            if j.job_type!="extract"
        ])
        for project_ in project
    ])
    print(df.to_csv(index=None))
    df = df.fillna(0)
    msg = f"`{sum(df.total_bytes_processed)/2**30:8.4f}`gb spent today"
    print(msg)
    if slack:
        os.system(
            f"curl -X POST -H 'Content-type: application/json' --data '{{\"text\":\"{msg}\"}}' \"{slack_webhook}\"")


if __name__ == "__main__":
    bq_log()
