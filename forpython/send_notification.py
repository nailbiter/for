#!/usr/bin/env python3
import click
from datetime import datetime
from time import sleep
from pymongo import MongoClient
from os import system, environ
from tqdm import tqdm as TQDM
from os import system
from jinja2 import Template


# procedures
@click.command()
@click.argument("message")
@click.option("--media", "-m", multiple=True, default=["slack"], type=click.Choice(["slack", "email", "popup"], case_sensitive=False))
@click.option("--delay_min", "-d", type=int, default=0)
@click.option("--tqdm/--no-tqdm", default=True)
@click.option("--script", "-s")
@click.option("--silent", is_flag=True, default=False)
def send_notification(message, media, delay_min, tqdm, script, silent):
    MongoClient().send_notification.call_log.insert_one({
        "message": message,
        "media": media,
        "date": datetime.now(),
        "script": script
    })

    print(f"message: {message}")
    print(f"media: {media}")
    print(f"delay: {delay_min}")

    start_date = datetime.now()
    print(start_date.strftime("%Y-%m-%dT%H:%M"))
    if script is not None:
        if tqdm:
            script = f"{script} 2>&1 | pv"
        print(f"> {script}")
        res = system(script)
        print(f"res: {res}")
    else:
        res = 0

    if not tqdm:
        sleep(delay_min*60)
    else:
        for i in TQDM(range(delay_min*60, 0, -1)):
            click.clear()
            sleep(1)
            d = datetime.utcfromtimestamp(i,)
            if d.day > 1:
                d_str = d.strftime("%Y-%m-%dT%H:%M:%S")
            else:
                d_str = d.strftime("%H:%M:%S")
            print(f"{d_str} {message}")

    end_date = datetime.now()
    print("\n")

    print(end_date.strftime("%Y-%m-%dT%H:%M"))

    env = dict(res=res, timedelta=str(end_date-start_date))
    _message = Template(message).render(env)

    if not silent:
        if "slack" in media:
            if "SEND_NOTIFICATION_SLACK_WEBHOOK" in environ:
                slack_webhook = environ["SEND_NOTIFICATION_SLACK_WEBHOOK"]
            else:
                client = MongoClient()
                slack_webhook = client.admin.passwords.find_one(
                    {"key": "DTWS_SLACK_WEBHOOK"})["value"]
            # FIXME do not use system
            system(
                f"curl -X POST -H 'Content-type: application/json' --data '{{\"text\":\"{_message}\"}}' \"{slack_webhook}\"")
        if "email" in media:
            raise NotImplementedError
        if "popup" in media:
            system(
                f"""osascript -e 'display notification "{_message}" with title "popup"'""")


# main
send_notification()
