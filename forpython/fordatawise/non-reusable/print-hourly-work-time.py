#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/fordatawise/non-reusable/print-hourly-work-time.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-19T22:23:38.665741
    REVISION: ---

==============================================================================="""

from __future__ import print_function
import click
import pandas as pd
import os
from os import path
import subprocess
import io
from datetime import datetime, timedelta
import numpy as np
import requests
import json
import logging
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials


def _add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


def _hours(st, et):
    st, et = [(int(x.split(":")[0]), int(x.split(":")[1])) for x in [st, et]]
    st, et = [datetime(year=1900, month=1, day=1, hour=h, minute=m)
              for h, m in [st, et]]
    return (et-st).seconds/3600


# the code staring from here is taken from https://developers.google.com/sheets/api/quickstart/python
# If modifying these scopes, delete the file token.json.
SCOPES = ['https://www.googleapis.com/auth/spreadsheets.readonly']

# The ID and range of a sample spreadsheet.
SAMPLE_SPREADSHEET_ID = '1SNIJRKOHOCrbeIL5_CaI_co4UBSPSK-8b-yb08-KSLc'
SAMPLE_RANGE_NAME = 'A2:D'


def main():
    """Shows basic usage of the Sheets API.
    Prints values from a sample spreadsheet.
    """
    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('token.json'):
        creds = Credentials.from_authorized_user_file('token.json', SCOPES)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('token.json', 'w') as token:
            token.write(creds.to_json())

    service = build('sheets', 'v4', credentials=creds)

    # Call the Sheets API
    sheet = service.spreadsheets()
    result = sheet.values().get(spreadsheetId=SAMPLE_SPREADSHEET_ID,
                                range=SAMPLE_RANGE_NAME).execute()
    values = result.get('values', [])

    if not values:
        print('No data found.')
    else:
        print('Name, Major:')
        for row in values:
            # Print columns A and E, which correspond to indices 0 and 4.
            print('%s, %s' % (row[0], row[4]))
# here ends the code from https://developers.google.com/sheets/api/quickstart/python


@click.command()
@click.option("--day", type=click.DateTime(["%Y-%m-%d"]))
@click.option("--webhook-url", envvar="PRINT_HOURLY_WORK_TIME_WEBHOOK")
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--debug/--no-debug", default=False)
@click.option("--client-secret-file", default=path.join(path.split(__file__)[0], "client_secret.json"))
@click.option("--token-file", default=path.join(path.split(__file__)[0], ".token.json"))
@_add_logger
def print_hourly_work_time(day, webhook_url, dry_run, debug, client_secret_file, token_file, logger=None):
    if debug:
        logging.basicConfig(level=logging.INFO)
    if day is None:
        day = datetime.now()
        day -= timedelta(days=3 if day.weekday()==0 else 1)

    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists(token_file):
        creds = Credentials.from_authorized_user_file(token_file, SCOPES)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                client_secret_file, SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open(token_file, 'w') as token:
            token.write(creds.to_json())

    service = build('sheets', 'v4', credentials=creds)

    # Call the Sheets API
    sheet = service.spreadsheets()
    result = sheet.values().get(spreadsheetId=SAMPLE_SPREADSHEET_ID,
                                range=SAMPLE_RANGE_NAME).execute()
    values = result.get('values', [])

    df = pd.DataFrame([
        {k: v for k, v in zip("日付,名前,開始,終了".split(","), row)}
        for row
        in values
    ])
    # FIXME: this can be done more stable (hard-code)
    names = [name for name in df["名前"].unique() if len(name)>0]
    logger.info(f"names: {names}")
    df = df.query(f"日付==\"{day.strftime('%Y-%m-%d')}\"").copy()
    df["時間"] = [_hours(st, et) for st, et in zip(df["開始"], df["終了"])]
    logger.info(df)
    df = df.groupby("名前").agg({"時間": np.sum})
    df = pd.concat([
        df.reset_index(),
        pd.DataFrame([
            {"名前": name, "時間": 0}
            for name
            in names
            if name not in (df.reset_index()["名前"].unique()) and not pd.isna(name)
        ])
    ])
    df["時間"] = df["時間"].apply(lambda h:f"{h:.2f}")
    df = df.set_index("名前")
    df = df.sort_index()
    # click.echo(list(df))
    msg = (f"""
    {day.strftime("%Y-%m-%d")} の稼働時間：
    {df}
    """)
    msg = msg.strip()
    click.echo(msg)
    if not dry_run:
        requests.post(webhook_url, json.dumps({
            # "text": f"```{msg}```"
            "text": msg
        }),
            headers={
                "Content-type": "application/json"
        })


if __name__ == "__main__":
    print_hourly_work_time()
