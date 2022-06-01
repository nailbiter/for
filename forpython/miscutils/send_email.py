#!/usr/bin/env python3
"""===============================================================================

        FILE: ./test2.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-08-05T09:21:42.906637
    REVISION: ---

==============================================================================="""
import smtplib
from os.path import basename
from email.mime.application import MIMEApplication
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.utils import COMMASPACE, formatdate
import os
import click
import tqdm
import time
import itertools


@click.command()
@click.option("-u", "--gmail-user", required=True, envvar="SEND_EMAIL__GMAIL_USER")
@click.option("-p", "--gmail-password", envvar="SEND_EMAIL__GMAIL_PASSWORD")
@click.option("-r", "--recipient", multiple=True)
@click.option("-t", "--text", type=click.Path(), required=True)
@click.option("-s", "--subject", required=True)
@click.option("--send-myself-copy/--no-send-myself-copy", default=True)
@click.option("-a", "--attachement", type=click.Path(), multiple=True)
def send_email(recipient, gmail_user, gmail_password, send_myself_copy, subject, text, attachement):
    server = smtplib.SMTP_SSL('smtp.gmail.com', 465)
    server.ehlo()
    server.login(gmail_user, gmail_password)
    _recipients = set(recipient)
    if send_myself_copy:
        _recipients.add(gmail_user)
    assert len(_recipients) > 0, _recipients
    with open(text) as f:
        text_text = f.read()
    _send_mail(gmail_user, sorted(_recipients), subject,
               text_text, files=list(attachement), server=server)
    server.close()
    click.echo(f"sent email to {_recipients}")


def _send_mail(send_from, send_to, subject, text, files=None,
               server=None):
    """
    adapted from https://stackoverflow.com/a/3363254
    """
    assert isinstance(send_to, list)

    msg = MIMEMultipart()
    msg['From'] = send_from
    msg['To'] = COMMASPACE.join(send_to)
    msg['Date'] = formatdate(localtime=True)
    msg['Subject'] = subject

    msg.attach(MIMEText(text))

    for f in files or []:
        with open(f, "rb") as fil:
            part = MIMEApplication(
                fil.read(),
                Name=basename(f)
            )
        # After the file is closed
        part['Content-Disposition'] = 'attachment; filename="%s"' % basename(f)
        msg.attach(part)


#    smtp = smtplib.SMTP(server)
    if server is None:
        server = smtplib.SMTP("127.0.0.1")
    smtp = server
    smtp.sendmail(send_from, send_to, msg.as_string())
#    smtp.close()


if __name__ == "__main__":
    send_email()
