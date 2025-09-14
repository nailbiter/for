#!/usr/bin/env python
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/gym-prompt-20250830.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-08-30T17:47:54.679048
    REVISION: ---

==============================================================================="""


# from dotenv import load_dotenv
import os
from os import path
import logging
import os
import re
import io
import uuid

import click
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
from googleapiclient.http import MediaIoBaseDownload
from alex_leontiev_toolbox_python.utils.logging_helpers import get_configured_logger
import pandas as pd
from jinja2 import Template

# --- CONFIGURATION ---
# If modifying these scopes, delete the file token.json.
SCOPES = ["https://www.googleapis.com/auth/drive.readonly"]
# CREDENTIALS_FILE = "credentials.json"
TOKEN_FILE = "gym-prompt-20250830-token.json"


def extract_sheet_id(url):
    """Extracts the Google Sheet ID from its URL."""
    match = re.search(r"/spreadsheets/d/([a-zA-Z0-9-_]+)", url)
    if match:
        return match.group(1)
    return None


def authenticate(CREDENTIALS_FILE):
    """Handles Google authentication and returns credentials."""
    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first time.
    if os.path.exists(TOKEN_FILE):
        creds = Credentials.from_authorized_user_file(TOKEN_FILE, SCOPES)

    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            if not os.path.exists(CREDENTIALS_FILE):
                logging.warning(
                    f"Error: Credentials file not found at '{CREDENTIALS_FILE}'"
                )
                logging.warning(
                    "Please follow the setup instructions in README.md to create it."
                )
                return None
            flow = InstalledAppFlow.from_client_secrets_file(CREDENTIALS_FILE, SCOPES)
            creds = flow.run_local_server(port=0)

        # Save the credentials for the next run
        with open(TOKEN_FILE, "w") as token:
            token.write(creds.to_json())

    return creds


def download_sheet_as_excel(sheet_url, output_filename, credentials="credentials.json"):
    """
    Downloads a Google Sheet as an Excel file (.xlsx) using the Google Drive API.

    Args:
        sheet_url (str): The full URL of the Google Sheet.
        output_filename (str): The desired name for the output Excel file.
    """
    logger = get_configured_logger("download_sheet_as_excel", level="INFO")

    sheet_id = extract_sheet_id(sheet_url)
    if not sheet_id:
        logger.info("Error: Could not find a valid Google Sheet ID in the URL.")
        return

    # Ensure the output filename has the correct extension
    if not output_filename.lower().endswith(".xlsx"):
        output_filename += ".xlsx"

    creds = authenticate(credentials)
    if not creds:
        logger.info("Authentication failed. Exiting.")
        return

    try:
        # Build the Google Drive service
        service = build("drive", "v3", credentials=creds)

        # Use the export_media method to download the file in Excel format
        request = service.files().export_media(
            fileId=sheet_id,
            mimeType="application/vnd.openxmlformats-officedocument.spreadsheetml.sheet",
        )

        fh = io.FileIO(output_filename, "wb")
        downloader = MediaIoBaseDownload(fh, request)

        done = False
        logger.info(f"Downloading '{sheet_url}' as '{output_filename}'...")
        while not done:
            status, done = downloader.next_chunk()
            if status:
                logger.info(f"Download {int(status.progress() * 100)}%.")

        logger.info(f"\nSuccessfully downloaded sheet to '{output_filename}'")

    except HttpError as error:
        logger.info(f"An error occurred: {error}")
        logger.info(
            "Please ensure you have access to the Google Sheet and that the URL is correct."
        )


# if __name__ == "__main__":
#     # --- IMPORTANT: PASTE YOUR GOOGLE SHEET URL HERE ---
#     sheet_to_download_url = "https://docs.google.com/spreadsheets/d/YOUR_SHEET_ID_HERE/edit"

#     # --- SET YOUR DESIRED OUTPUT FILENAME HERE ---
#     output_file = "downloaded_sheet.xlsx"

#     if "YOUR_SHEET_ID_HERE" in sheet_to_download_url:
#         logger.info("Please update the 'sheet_to_download_url' variable in the script with your Google Sheet URL.")
#     else:
#         download_sheet_as_excel(sheet_to_download_url, output_file)


@click.command()
@click.option(
    "--creds", default="gym-prompt-20250830-creds.json", type=click.Path(exists=True)
)
@click.option("-U", "--url", required=True, type=str)
@click.option("-T", "--tomorrow", required=False, type=str)
@click.option(
    "--template-filename",
    type=click.Path(),
    default="/Users/nailbiter/Documents/forgithub/for-private-prompts/prompts/20250912-gym/20250912-gym.jinja.md",
)
def gym_prompt_20250830(creds, url, tomorrow, template_filename):
    logger = get_configured_logger("gym_prompt_20250830", level="INFO")

    with open(template_filename) as f:
        tpl = f.read()

    output_file = f"/tmp/{uuid.uuid4()}.xlsx"
    download_sheet_as_excel(url, output_file, creds)
    logger.info(f"saved to `{output_file}`")

    sheets = {}
    for k in SHEET_NAMES:
        sheets[k] = pd.read_excel(output_file, sheet_name=k)

    prompt = (
        Template(tpl)
        .render(
            tomorrow=deduce_tomorrow_name(sheets) if tomorrow is None else tomorrow,
            sheets=sheets,
        )
        .strip()
    )
    logger.info(f"prompt:\n```\n{prompt}\n```")
    click.echo(prompt)


def deduce_tomorrow_name(sheets: dict[str, pd.DataFrame]) -> str:
    logger = get_configured_logger(
        "deduce_tomorrow_name",
        level="DEBUG",
        log_to_file=".deduce_tomorrow_name.log.txt",
    )

    columns = {k: list(df.columns) for k, df in sheets.items()}
    logger.debug(columns)
    actuals = {
        k: sum([col.lower().startswith("actual") for col in cols])
        for k, cols in columns.items()
    }
    logger.info(f"actuals: {actuals}")

    actuals = pd.Series(actuals)
    if actuals.nunique() == 1:
        day, index = "sat", actuals.unique()[0] + 1
    else:
        index = actuals.max()
        day = actuals[actuals.ne(index)].index[0].split("-")[1].lower()

    suffix = {2: "nd", 1: "st", 3: "rd"}.get(index % 10, "th")
    day = {k.lower()[:3]: k for k in ["Saturday", "Sunday", "Tuesday", "Thursday"]}[
        day.lower()
    ]
    tomorrow = f"{index}{suffix} {day}"

    logger.info(f"deduced tomorrow: `{tomorrow}`")
    return tomorrow


SHEET_NAMES = ["4d-sat-upper", "4d-sun-lower", "4d-tue-upper", "4d-thu-lower"]


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    gym_prompt_20250830()
