#!/usr/bin/env python3
from pymongo import MongoClient
from os import getpid, system, close
from time import sleep
import logging
from tempfile import mkstemp
from datetime import datetime
import click


# global const's
PID_FN = ".player.pidfile"
FILTER = {"played": False}
MAX_ITERATION_NUM = -1
WAIT_SEC = 5
PLAY_AUDIO_COMMAND = "mplayer"
# procedure


def myexec(cmd):
    logging.info(f"> {cmd}")
    system(cmd)


@click.command()
def player():
    logging.basicConfig(level=logging.INFO)
    with open(PID_FN, "w") as f:
        pid = getpid()
        f.write(str(pid))
    coll = MongoClient()["for-music-player"].queue

    i = 0
    while True:
        i += 1
        if not coll.count_documents(filter=FILTER):
            print(f"> queue empty. wait {WAIT_SEC} sec...")
            # exit()
            sleep(WAIT_SEC)
        elif MAX_ITERATION_NUM >= 0 and i >= MAX_ITERATION_NUM:
            exit()
        else:
            objs = coll.find(filter=FILTER, sort=[("date", 1)])
            obj = objs[0]
            f, fn = mkstemp(suffix=".mp3")
            coll.update_one({"_id": obj["_id"]}, {
                            "$set": {"start": datetime.now()}})
            myexec(f"wget \"{obj['path']}\" -O \"{fn}\"")
            myexec(f"{PLAY_AUDIO_COMMAND} \"{fn}\"")
            close(f)
            coll.update_one({"_id": obj["_id"]}, {
                            "$set": {"played": True, "end": datetime.now()}})


# main
if __name__ == "__main__":
    player()
