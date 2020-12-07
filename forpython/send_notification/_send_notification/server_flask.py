"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/send_notification/server_flask.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-30T14:39:34.946862
    REVISION: ---

==============================================================================="""

from flask import Flask
import pandas as pd
from datetime import datetime
import uuid
import os
from pymongo import MongoClient
import logging
from _send_notification import system, NOTIFICATION_MEDIA, check_media_is_valid, add_logger
from jinja2 import Template
from os import path
from urllib import parse

app = Flask(__name__)
_TIMERS_TABLE_NAME = "timers"
logging.basicConfig(level=logging.INFO)


def _get_slack_webhook(client=None):
    if client is None:
        client = MongoClient()
    slack_webhook = client.admin.passwords.find_one(
        {"key": "DTWS_SLACK_WEBHOOK"})["value"]
    return slack_webhook


@app.route('/popup/<message>')
def popup(message):
    os.system(
        f"osascript -e 'display notification \"{message}\" with title \"popup\"'")
    return ""


@app.route('/new_timer/<due_datetime>/<message>/<media>')
@add_logger
def new_timer(due_datetime, message, media, logger):
    m, i = check_media_is_valid(media)
    assert m is not None, media
    datetime_ = datetime.strptime(due_datetime, "%Y%m%d%H%M%S")
    client = MongoClient()
    uuid_ = uuid.uuid4()

    script_fn = f"/tmp/{uuid_}.sh"
    script_log_fn = f"/tmp/{uuid_}.log.txt"
    cmd = Template(list(NOTIFICATION_MEDIA.values())[i]).render({
        "slack_webhook": _get_slack_webhook(client),
        "message": message,
        "match_object": m,
        "telegram_token": os.environ["TELEGRAM_TOKEN"],
        "parse":parse
    })
    with open(script_fn, "w") as f:
        #f.write(f"{cmd} 2>&1 | tee {script_log_fn}")
        f.write(cmd)
    executor_fn = path.join(path.split(
        __file__)[0], "..", "resources", 'executor.py')
    logger.info(f"executor_fn: {executor_fn}")
    system(
        f"echo '/usr/local/bin/python3 {executor_fn} {script_fn} {script_log_fn} 1 0'|at -t {datetime_.strftime('%Y%m%d%H%M.%S')}")

    df = client.send_notification.timers.insert_one({
        "uuid": str(uuid_),
        "due": datetime_,
        "start": datetime.now(),
        "message": message,
        "media": media,
    })
#    conn = _get_conn()
#    df.to_sql(_TIMERS_TABLE_NAME, conn, if_exists="append", index=None)
#    conn.close()

    return f"timer {uuid_} added due {datetime_.isoformat()}"
