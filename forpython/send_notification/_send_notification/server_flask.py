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
from _send_notification import system

app = Flask(__name__)
logging.basicConfig(level=logging.INFO)
_TIMERS_TABLE_NAME = "timers"


def _get_slack_webhook(client=None):
    if client is None:
        client = MongoClient()
    slack_webhook = client.admin.passwords.find_one(
        {"key": "DTWS_SLACK_WEBHOOK"})["value"]
    return slack_webhook


@app.route('/new_timer/<due_datetime>/<message>/<media>')
def new_timer(due_datetime, message, media):
    assert media in ["slack"]
    datetime_ = datetime.strptime(due_datetime, "%Y%m%d%H%M%S")
    client = MongoClient()
    uuid_ = uuid.uuid4()

    script_fn = f"/tmp/{uuid_}.sh"
    with open(script_fn, "w") as f:
        f.write(
            f"""curl -X POST -H 'Content-type: application/json' --data '{{"text":"{message}"}}' {_get_slack_webhook(client)}""")
    system(f"at -f {script_fn} -t {datetime_.strftime('%Y%m%d%H%M.%S')}")

    df = client.send_notification.timers.insert_one({
        "uuid": uuid_,
        "datetime": datetime_,
        "message": message,
        "media": media
    })
#    conn = _get_conn()
#    df.to_sql(_TIMERS_TABLE_NAME, conn, if_exists="append", index=None)
#    conn.close()

    return f"timer {uuid_} added due {datetime_.isoformat()}"
