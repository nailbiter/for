#!/usr/bin/env python3
import click
from datetime import datetime
from time import sleep
from pymongo import MongoClient
from os import system
from tqdm import tqdm
from os import system


# procedures
@click.command()
@click.argument("message")
@click.option("--media", "-m", multiple=True, default=["slack"], type=click.Choice(["slack", "email", "popup"], case_sensitive=False))
@click.option("--delay_min", "-d", type=int, default=0)
@click.option("--silent/--no-silent", default=False)
def send_notification(message, media, delay_min, silent):
    print(f"message: {message}")
    print(f"media: {media}")
    print(f"delay: {delay_min}")

    print(datetime.now().strftime("%Y-%m-%dT%H:%M"))
    if silent:
        sleep(delay_min*60)
    else:
        for i in tqdm(range(delay_min*60, 0, -1)):
            click.clear()
            sleep(1)
            d = datetime.utcfromtimestamp(i,)
            if d.day > 1:
                d_str = d.strftime("%Y-%m-%dT%H:%M:%S")
            else:
                d_str = d.strftime("%H:%M:%S")
            print(f"{d_str} {message}")

    if "slack" in media:
        client = MongoClient()
        slack_webhook = client.admin.passwords.find_one(
            {"key": "DTWS_SLACK_WEBHOOK"})["value"]
        # FIXME do not use system
        system(
            f"curl -X POST -H 'Content-type: application/json' --data '{{\"text\":\"{message}\"}}' \"{slack_webhook}\"")
    if "email" in media:
        raise NotImplementedError
    if "popup" in media:
        system(f"""osascript -e 'display notification "{message}" with title "popup"'""")
        raise NotImplementedError

    print("\n")
    print(datetime.now().strftime("%Y-%m-%dT%H:%M"))


# main
send_notification()
