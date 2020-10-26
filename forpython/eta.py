#!/usr/bin/env python3
"""===============================================================================

        FILE: eta.py

       USAGE: ./eta.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-10-26T13:14:38.158305
    REVISION: ---

==============================================================================="""

from __future__ import print_function
import click
import pandas as pd
import pickle
import os.path
from googleapiclient.discovery import build
from google_auth_oauthlib.flow import InstalledAppFlow
from google.auth.transport.requests import Request
from datetime import datetime
import logging

# If modifying these scopes, delete the file token.google_spreadsheet.pickle.
_SCOPES = ['https://www.googleapis.com/auth/spreadsheets.readonly']


@click.command()
@click.argument("spreadsheet_id")
@click.argument("time_column_name")
@click.option("--range_name", default="A:Z")
def eta(spreadsheet_id, range_name, time_column_name):
    """Shows basic usage of the Sheets API.
    Prints values from a sample spreadsheet.

    cf. https://developers.google.com/sheets/api/quickstart/python
    """
    creds = None
    # The file token.google_spreadsheet.pickle stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('token.google_spreadsheet.pickle'):
        with open('token.google_spreadsheet.pickle', 'rb') as token:
            creds = pickle.load(token)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'credentials_google_spreadsheet.json', _SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('token.google_spreadsheet.pickle', 'wb') as token:
            pickle.dump(creds, token)

    service = build('sheets', 'v4', credentials=creds)

    # Call the Sheets API
    sheet = service.spreadsheets()
    result = sheet.values().get(spreadsheetId=spreadsheet_id,
                                range=range_name).execute()
    values = result.get('values', [])

    assert values

    head, body = values[0], values[1:]
    df = pd.DataFrame([{k: v for k, v in zip(head, r)} for r in body])
    df[time_column_name] = df[time_column_name].apply(
        lambda s: s if pd.isna(s) else datetime.strptime(s, "%Y/%m/%d %H:%M:%S"))
    logging.info(df)
    count = len(df)-1
    df["start_date"] = df[time_column_name].shift(1)
    df = df.dropna()
    logging.info(df)
    eta = sum(list(df[time_column_name]-df["start_date"]),
              start=pd.Timedelta(seconds=0))
    print(f"progress: {len(df)}/{count} in {eta}")
    eta = eta/len(df)*(count-len(df))
    print(f"=> eta: {eta}, estimated end: {datetime.now()+eta}")


if __name__ == '__main__':
    eta()
