"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/send_notification/send_notification/__init__.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-30T14:38:04.610863
    REVISION: ---

==============================================================================="""

import logging
import os
import subprocess
import re


def add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    return _f


@add_logger
def system(cmd, logger, dry_run=False, get_output=False):
    logger.info(f"> {cmd}")
    if not dry_run:
        if get_output:
            return subprocess.getoutput(cmd)
        else:
            os.system(cmd)


# FIXME: ed74e92a17115a17fd0010c7 -- refactor to make ordering explicit
NOTIFICATION_MEDIA = {
    "slack": """curl -X POST -H 'Content-type: application/json' --data '{"text":"{{message}}"}' {{slack_webhook}}""",
    r"telegram:(\d+)": """curl -X POST -H 'Content-Type: application/json' -d '{"chat_id": "{{match_object.group(1)}}", "text": "{{message}}"}' https://api.telegram.org/bot{{telegram_token}}/sendMessage""",
    "popup": """curl 'localhost:5000/popup/{{parse.quote(message)}}' """,
}


def check_media_is_valid(media):
    for i, (k, v) in enumerate(NOTIFICATION_MEDIA.items()):
        m = re.match(k, media)
        if m is not None:
            return m, i
    return None, -1
