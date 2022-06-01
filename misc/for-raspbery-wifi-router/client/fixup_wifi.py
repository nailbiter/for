#!/usr/local/bin/python3
from subprocess import check_output
import click
import re
from time import sleep
from datetime import datetime, timedelta

# /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport -s #list all known wifis

# https://www.mattcrampton.com/blog/managing_wifi_connections_using_the_mac_osx_terminal_command_line/

# 4. Join a wifi network from the Mac OSX terminal command line:

# > networksetup -setairportnetwork en0 WIFI_SSID_I_WANT_TO_JOIN WIFI_PASSWORD

SLEEP_SECONDS = 0

LOOP_WAIT_SECONDS = 1

MAX_ITERATIONS = 5

IFCONFIG = "/sbin/ifconfig"


def _is_active():
    s = _check_output(f"{IFCONFIG} en0")
    m = re.findall(r"status: ([a-z]+)", s)
    assert len(m) == 1
    m = m[0]
    if m == "active":
        return True
    elif m == "inactive":
        return False
    else:
        raise NotImplementedError


def _check_output(cmd):
    return check_output(cmd.split(" ")).decode("utf-8")


@click.group()
def cli():
    pass


@cli.command()
def off():
    _check_output("networksetup -setairportpower en0 off")


@cli.command()
def on():
    _check_output("networksetup -setairportpower en0 on")


@cli.command()
@click.option("--wifi_pass", envvar="WIFI_PASS")
@click.option("--wifi_name", envvar="WIFI_NAME")
@click.option("--force/--no-force", default=False)
@click.option("--loop/--no-loop", default=False)
@click.option("-s", "--sleep-seconds", type=int, default=LOOP_WAIT_SECONDS)
@click.option("-t", "--turn-off-timer", type=int, default=-1)
def fw(wifi_pass, wifi_name, force, loop, turn_off_timer, sleep_seconds):
    assert sleep_seconds > 0
    turn_off_time = None
    if turn_off_timer >= 0:
        turn_off_time = datetime.now()+timedelta(minutes=turn_off_timer)
    assert wifi_pass is not None
    if loop:
        while (turn_off_time is None) or (datetime.now() < turn_off_time):
            is_active = _is_active()
            print(f"start: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
            print(f"is_active: {is_active}")

            if not is_active or force:
                iteration_count = 0
                res = None
                while iteration_count == 0 or len(res) > 0:
                    if iteration_count > 0:
                        print("retrying...")
                        sleep(SLEEP_SECONDS)
                    res = _check_output(
                        f"/usr/sbin/networksetup -setairportnetwork en0 {wifi_name} {wifi_pass}")
                    iteration_count += 1
                    if iteration_count >= MAX_ITERATIONS:
                        print("breaking because exceeded max iteration count")
                        break
                    print(f"res: {res}")

            print(f"end: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
            if loop:
                print("************************")
                sleep(sleep_seconds)


if __name__ == "__main__":
    cli()
