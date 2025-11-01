"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/miscutils/_aprompt/gdrive_utils.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-10-25T18:29:22.301937
    REVISION: ---

==============================================================================="""
import os
from os import path
import logging
import os
import re
import io
import uuid
import typing

import click
from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
from googleapiclient.http import MediaIoBaseDownload

# from alex_leontiev_toolbox_python.utils.logging_helpers import get_configured_logger
import pandas as pd
from jinja2 import Template

# --- CONFIGURATION ---
# If modifying these scopes, delete the file token.json.
SCOPES = ["https://www.googleapis.com/auth/drive.readonly"]
# CREDENTIALS_FILE = "credentials.json"
TOKEN_FILE = "gym-prompt-20250830-token.json"


def extract_sheet_id(url) -> typing.Optional[str]:
    """Extracts the Google Sheet ID from its URL."""
    match = re.search(r"/spreadsheets/d/([a-zA-Z0-9-_]+)", url)
    if match:
        return match.group(1)
    return None


def download_sheet_as_excel(
    sheet_url,
    output_filename: typing.Optional[str] = None,
    credentials="credentials.json",
) -> str:
    """
    Downloads a Google Sheet as an Excel file (.xlsx) using the Google Drive API.

    Args:
        sheet_url (str): The full URL of the Google Sheet.
        output_filename (str): The desired name for the output Excel file.
    """
    # logger = get_configured_logger("download_sheet_as_excel", level="INFO")
    logger = logging.getLogger("download_sheet_as_excel")

    sheet_id = extract_sheet_id(sheet_url)
    if not sheet_id:
        logger.info("Error: Could not find a valid Google Sheet ID in the URL.")
        return

    # Ensure the output filename has the correct extension
    output_filename = path.join("/tmp", f"{uuid.uuid4()}.xlsx")
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
        return output_filename

    except HttpError as error:
        logger.info(f"An error occurred: {error}")
        logger.info(
            "Please ensure you have access to the Google Sheet and that the URL is correct."
        )


def authenticate(credentials_file, token_file: typing.Optional[str] = None):
    """Handles Google authentication and returns credentials."""
    token_file = (
        path.splitext(credentials_file)[0].removesuffix("-creds") + "-token.json"
        if token_file is None
        else token_file
    )
    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first time.
    if os.path.exists(token_file):
        creds = Credentials.from_authorized_user_file(token_file, SCOPES)

    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            if not os.path.exists(credentials_file):
                logging.warning(
                    f"Error: Credentials file not found at '{credentials_file}'"
                )
                logging.warning(
                    "Please follow the setup instructions in README.md to create it."
                )
                return None
            flow = InstalledAppFlow.from_client_secrets_file(credentials_file, SCOPES)
            creds = flow.run_local_server(port=0)

        # Save the credentials for the next run
        with open(token_file, "w") as token:
            token.write(creds.to_json())

    return creds


def extract_doc_id(url) -> typing.Optional[str]:
    """Extracts the Google Document ID from its URL."""
    # Looks for /document/d/ instead of /spreadsheets/d/
    match = re.search(r"/document/d/([a-zA-Z0-9-_]+)", url)
    if match:
        return match.group(1)
    return None


def download_doc_as_html(doc_url: str, credentials_file: str) -> typing.Optional[str]:
    """
    Downloads a Google Doc as an HTML string.
    """
    logger = logging.getLogger("download_doc_as_html")
    # Reuse the existing authenticate function
    creds = authenticate(credentials_file)
    if not creds:
        logger.error("Authentication failed.")
        return None

    doc_id = extract_doc_id(doc_url)
    if not doc_id:
        logger.error("Error: Could not find a valid Google Doc ID in the URL.")
        return None

    try:
        service = build("drive", "v3", credentials=creds)

        # Use the export method for Google Docs
        # This is different from the export_media used for Sheets
        logger.info(f"Exporting Google Doc (ID: {doc_id}) as HTML...")
        request = service.files().export(fileId=doc_id, mimeType="text/html")

        # export() returns the content directly as bytes
        html_content_bytes = request.execute()

        html_content = html_content_bytes.decode("utf-8")
        logger.info("Successfully retrieved HTML content.")

        return html_content

    except HttpError as error:
        logger.error(f"An error occurred: {error}")
        logger.error("Please ensure the URL is correct and you have read access.")
        return None
