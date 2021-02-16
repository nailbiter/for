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
from jinja2 import Template

_PREDEFINED_SLACK_MESSAGES = {
    "cannotcome": {
        "hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get kintai"),
        "message": """
            大変申し訳ございません。体調不良のため、今日は1日お休みさせて頂きたいです。
            """
    },
    "old_tables_confirmation_announce": {
        "hook":subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get old_tables_confirmation_2"),
        #"hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get jot"),
        "message": """{{mention["Watanabe-san"]}}
今日の１９時ぐらいは以下の表を dustbin に移す予定です
{{url}}
もし、特にコメントがなければ、今日の１９時ぐらいこのテーブルを dustbin に移す予定です。
今から１週間で毎日そのようなGoogle Spreadsheetルを作る予定です。見方が以下のようになります。
２つスプレッドシートがあります：
長いバーション   — 移すしようとするテーブルのフルリスト
短いバーション — もっと読みやすい形
(念の為、{{mention["Appaz-san"]}}さんと{{mention["Wang-san"]}}　さんにもアクセスもあげました)
"""
    },
    "old_tables_confirmation_removal": {
        "hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get old_tables_confirmation_2"),
        "message": """
            dustbinに移しました.
            """
    },
    "done_work": {
        "hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get remote_work"),
        "message": """
            勤務終了
            """
    },
    "lunch": {
        "hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get remote_work"),
        "message": """
            昼ごはんに行きます。
            """
    },
    "test": {
        "hook": subprocess.getoutput("~/for/forpython/miscutils/keyman.py --tag slack_webhooks --tag datawise get jot"),
        "message": """
            hit me back, just to check, <@UKX9GP5N2>
            """,
    }
}
_CONSTANT_TEMPLATE_ENVIRONMENT = {
    "mention":{
        k: f"<@{v}>"
        for k,v
        in {
            "alex":"UKX9GP5N2",
            "Watanabe-san":"U01016KTPV2",
            "Wang-san":"UQ3NG9FNK",
            "Appaz-san":"ULCDU76V8",
        }.items()
    }
}


@click.command()
@click.option("-m", "--message", type=click.Choice(_PREDEFINED_SLACK_MESSAGES), default="test")
@click.option("-p", "--parameter", multiple=True,nargs=2)
def slack(message,parameter):
    WEB_HOOK_URL = _PREDEFINED_SLACK_MESSAGES[message]["hook"]
    text = Template(_PREDEFINED_SLACK_MESSAGES[message]["message"]).render({
        **_CONSTANT_TEMPLATE_ENVIRONMENT,
        **{k:v for k,v in parameter}
    })
    requests.post(WEB_HOOK_URL, data=json.dumps({
        # 'text': u'Notifycation From Python.',  #通知内容
        "text": text,
        #        'username': u'Bakira-Tech-Python-Bot',  #ユーザー名
        #        'icon_emoji': u':smile_cat:',  #アイコン
        'link_names': 1,  # 名前をリンク化
    }))


if __name__ == "__main__":
    slack()
