#!/usr/bin/env python3
"""===============================================================================

        FILE: slack.py

       USAGE: ./slack.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-06T17:05:00.067647
    REVISION: ---

==============================================================================="""

import click
import requests
import json
import subprocess

_PREDEFINED_SLACK_MESSAGES = {
    "cannotcome": {
        "hook":subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get kintai"),
        "message": """
            大変申し訳ございません。体調不良のため、今日は1日お休みさせて頂きたいです。
            """
    },
    "done_work": {
        "hook":subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get remote_work"),
        "message": """
            勤務終了
            """
    },
    "lunch": {
        "hook":subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get remote_work"),
        "message": """
            昼ごはんに行きます。
            """
    },
    "test": {
        "hook":subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get jot"),
        "message": """
            hit me back, just to check, @Oleksii Leontiev
            """,
    }
}


@click.command()
@click.option("-m", "--message", type=click.Choice(_PREDEFINED_SLACK_MESSAGES), default="test")
def slack(message):
    WEB_HOOK_URL = _PREDEFINED_SLACK_MESSAGES[message]["hook"]
    requests.post(WEB_HOOK_URL, data=json.dumps({
        # 'text': u'Notifycation From Python.',  #通知内容
        "text": _PREDEFINED_SLACK_MESSAGES[message]["message"],
        #        'username': u'Bakira-Tech-Python-Bot',  #ユーザー名
        #        'icon_emoji': u':smile_cat:',  #アイコン
        'link_names': 1,  # 名前をリンク化
    }))


if __name__ == "__main__":
    slack()
