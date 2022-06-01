#!/usr/bin/env python3
"""===============================================================================

        FILE: script.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-10-05T16:04:18.469740
    REVISION: ---

==============================================================================="""

import click
import os
from datetime import datetime, timedelta
import json
from croniter import croniter
import requests


_CONDITIONS = {
    "_default": lambda _: True,
    "last_day_of_month": lambda dt: (dt+timedelta(days=1)).month != dt.month,
}


@click.command()
@click.option("-c", "--cmd", required=True)
@click.option("-r", "--cronfile", required=True, type=click.Path())
@click.option("--dry-run/--no-dry-run", default=False)
@click.option("--dt-shift", type=int, default=0)
@click.option("--post-report-hook", envvar="CRONTRELLO_POST_REPORT_HOOK")
def script(cmd, cronfile, dry_run, dt_shift, post_report_hook):
    #    click.echo(f"")
    #    click.echo(f"\"{cmd}\"")
    with open(cronfile) as f:
        cron = json.load(f)
    now = datetime.now()
    now += timedelta(hours=dt_shift)
    to_sched = []
    print(now)
    for r in cron:
        it = croniter(r["cronline"], now-timedelta(days=1))
        while True:
            _dt = it.get_next(datetime)
            if _dt.date()>=now.date():
                break
        print(_dt)
        print(f"testing r['name']")

        if _dt.date()!=now.date():
            print(f"{_dt.date()}!={now.date()}")
        elif not _CONDITIONS[r.get("additional_conditions", "_default")](now):
            print(f"""{r.get("additional_conditions", "_default")}({now}) => {False}""")
        elif not ("after" not in r or now >= datetime.strptime(r["after"], "%Y-%m-%d")):
            print(f"after {r}")
        elif not ("before" not in r or now <= datetime.strptime(r["before"], "%Y-%m-%d")):
            print(f"before {r}")
        else:
            _cmd = f"{cmd} {r['name']}"
            click.echo(f"> {_cmd}")
            to_sched.append(r["name"])
            if not dry_run:
                os.system(_cmd)
    click.echo(to_sched)
    if post_report_hook is not None:
        slack_webhook = post_report_hook
        _ = requests.post(slack_webhook, json.dumps({
            "text": f"""`{','.join(sorted(to_sched))}` trello cards created on `{now.isoformat()}`"""
        }),
            headers={
                "Content-type": "application/json"
        })


if __name__ == "__main__":
    script()
