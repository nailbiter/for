#!/usr/bin/env python3
"""===============================================================================

        FILE: ./scripts/one-month.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-06-10T14:29:36.059131
    REVISION: ---

==============================================================================="""

import click
from datetime import datetime
from calendar import monthrange
import os
from jinja2 import Template
import logging
import uuid
import subprocess


@click.group()
@click.option("-m", "--month", type=click.DateTime(["%Y-%m-%d"]))
@click.option("-s", "--skip", type=int, default=0)
@click.pass_context
def one_month(ctx, month, skip):
    ctx.ensure_object(dict)
    ctx.obj["month"] = month
    ctx.obj["skip"] = skip


@one_month.command()
@click.pass_context
def pdf(ctx):
    month, skip = ctx.obj["month"], ctx.obj["skip"]
    if month is None:
        month = datetime.now()
    days = [datetime(month.year, month.month, d+1)
            for d in range(list(monthrange(month.year, month.month))[1])]
    days = [day for day in days if day.weekday() == 6]
    days = days[skip:]
    for day in days:
        # ./bookmark.py -d $DATE make && open ./pdfs/bookmark_$DATE.pdf && ./bookmark.py -d $DATE edit-loop
        cmd = f"""./bookmark.py -d {day.strftime('%Y-%m-%d')} make && open ./pdfs/bookmark_{day.strftime('%Y-%m-%d')}.pdf && ./bookmark.py -d {day.strftime('%Y-%m-%d')} edit-loop"""
        err,out = subprocess.getstatusoutput(cmd)
        assert err == 0, (cmd,err,out)


_UKRAINIAN_MONTHS = {
    1: "   Січень",
    2: "   Лютий",
    3: "   Березень",
    4: "   Квітень",
    5: "   Травень",
    6: "   Червень",
    7: "   Липень",
    8: "   Серпень",
    9: "   Вересень",
    10: "  Жовтень",
    11: "  Листопад",
    12: "  Грудень",
}


@one_month.command()
@click.pass_context
def email(ctx):
    month, skip = ctx.obj["month"], ctx.obj["skip"]
    if month is None:
        month = datetime.now()
    days = [datetime(month.year, month.month, d+1)
            for d in range(list(monthrange(month.year, month.month))[1])]
    days = [day for day in days if day.weekday() == 6]
    days = days[skip:]
    with open(f"mailtext.txt") as f:
        text = f.read()
    _umonth = _UKRAINIAN_MONTHS[month.month].lower().strip()
    text = Template(text).render({
        "month": _umonth,
    })
    text_fn = f"/tmp/{uuid.uuid4()}.txt"
    with open(text_fn, "w") as f:
        f.write(text)
    cmd = Template("""send_email.py {%for r in recipients%} -r '{{r}}' {%endfor%} -t {{text}} -s 'Закладки на {{month}}' {%for day in days%}-a pdfs/bookmark_{{day.strftime("%Y-%m-%d")}}.pdf {%endfor%}""").render({
        "days": days,
        "month": _umonth,
        "text": text_fn,
        "recipients": ["dpozdnyaev@gmail.com", "denghuaxuan@aliyun.com"],
    })
    logging.warning(cmd)
    os.system(cmd)


if __name__ == "__main__":
    one_month()
