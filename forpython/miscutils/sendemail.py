#!/usr/bin/env python3
"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/forbookmarks/sendemail.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2025-03-22T04:14:25.576139
    REVISION: ---

==============================================================================="""

import click

# from dotenv import load_dotenv
import os
from os import path
import logging
import smtplib
import ssl
import smtplib
import ssl
from email import encoders
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import functools
from jinja2 import Template

moption = functools.partial(click.option, show_default=True, show_envvar=True)


def send_email_with_attachment(
    sender_email,
    sender_password,
    receiver_email,
    cc_email,
    subject,
    message,
    attachment_path,
):
    """Sends an email with a CC recipient and a PDF attachment."""

    port = 465  # For SSL
    smtp_server = "smtp.gmail.com"
    context = ssl.create_default_context()

    try:
        msg = MIMEMultipart()
        msg["From"] = sender_email
        msg["To"] = receiver_email
        msg["Cc"] = cc_email
        msg["Subject"] = subject

        body = message
        msg.attach(MIMEText(body, "plain"))

        # Attach the PDF
        with open(attachment_path, "rb") as attachment:
            part = MIMEBase("application", "octet-stream")
            part.set_payload(attachment.read())

        encoders.encode_base64(part)
        part.add_header(
            "Content-Disposition",
            f"attachment; filename= {attachment_path.split('/')[-1]}",
        )
        msg.attach(part)

        text = msg.as_string()

        with smtplib.SMTP_SSL(smtp_server, port, context=context) as server:
            server.login(sender_email, sender_password)
            server.sendmail(sender_email, [receiver_email, cc_email], text)
        print("Email with attachment sent successfully!")
    except Exception as e:
        print(f"An error occurred: {e}")


@click.command()
@moption("-e", "--sender-email", required=True)
@moption("-p", "--sender-password", required=True)
@moption("-r", "--receiver-email", required=True)
@moption("-c", "--cc-email", required=True)
@moption("-s", "--subject", required=True)
@moption("-m", "--message", required=True, type=click.Path())
@moption("-a", "--attachment-path", type=click.Path())
def sendemail(
    sender_email,
    sender_password,
    receiver_email,
    cc_email,
    subject,
    message,
    attachment_path,
):
    ## FIXME: remove this restriction
    assert attachment_path is not None
    # sender_email = "your_email@gmail.com"  # Replace with your Gmail address
    # sender_password = "your_password"  # Replace with your Gmail password or App Password
    # receiver_email = "recipient_email@example.com"  # Replace with the recipient's email
    # cc_email = "cc_recipient@example.com"  # Replace with the CC recipient's email
    # subject = "Email with PDF Attachment"
    # message = "Please find the attached PDF."
    # attachment_path = "path/to/your/document.pdf"  # Replace with the path to your PDF file
    with open(message) as f:
        message = Template(f.read().strip()).render()
    send_email_with_attachment(
        sender_email,
        sender_password,
        receiver_email,
        cc_email,
        subject,
        message,
        attachment_path,
    )


if __name__ == "__main__":
    #    fn = ".env"
    #    if path.isfile(fn):
    #        logging.warning(f"loading `{fn}`")
    #        load_dotenv(dotenv_path=fn)
    sendemail(auto_envvar_prefix="SENDEMAIL")
