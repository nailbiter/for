#!/usr/bin/env python3
"""===============================================================================

        FILE: /tmp/80fcd231_8499_470f_9ade_c92357a55923.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-06-21T21:37:19.883796
    REVISION: ---

TODO:
    1. stop functionality

==============================================================================="""

import click
from datetime import datetime, timedelta
import re
import time
import collections


@click.group()
def subtitles():
    pass


@subtitles.command(name="shift")
@click.option("--sub-file", type=click.Path(), required=True)
@click.option("-c", "--chunk-index", type=int, default=1)
@click.option("-t", "--time",)
def shift_subs(sub_file, chunk_index, time):
    with open(sub_file) as f:
        txt = f.read()
    chunks = txt.split("\n\n")
#    times = [chunk.split("\n") for chunk in chunks]
#    anchor = times[chunk_index-1]
    anchor = chunks[chunk_index-1].split("\n")[1].split(" --> ")[0]
    anchor = datetime.strptime(anchor, "%H:%M:%S,%f")
#    print(anchor)

    time = datetime(year=1900, month=1, day=1, **
                    {k: int(v) for v, k in zip(time.split(":"), ["minute", "second"])})
    diff = time-anchor
#    print(diff)

    for i, chunk in enumerate(chunks):
        lines = chunk.split("\n")
        if len(lines) < 3:
            continue
        try:
            times = lines[1].split(" --> ")
        except Exception:
            print((lines, i))
        lines[1] = " --> ".join([(datetime.strptime(t, "%H:%M:%S,%f") +
                                diff).strftime("%H:%M:%S,%f")[:12] for t in times])
        chunk = "\n".join(lines)
        chunks[i] = chunk

    print("".join(map(lambda s: s+"\n\n", chunks)))


def _parse_time(t):
    # 00:01:07,800 --> 00:01:09,260
    m = re.match(r"(\d{2}):(\d{2}):(\d{2}),(\d{3})", t)
    assert m is not None
    return timedelta(**{k: int(m.group(i+1)) for i, k in enumerate("hours,minutes,seconds,milliseconds".split(","))})


Subs = collections.namedtuple("Subs", "start end text")

class _DumbWaiter():
    def __init__(self,start=None):
        if start is None:
            self._now = timedelta(0)
        else:
            self._now = start
    def __call__(self,t):
        delta = t-self._now
        if delta>timedelta(0):
            time.sleep(delta.total_seconds())
            self._now += delta

@subtitles.command()
@click.argument("fn", type=click.Path())
@click.option("-n", "--now")
def show(fn, now):
    with open(fn) as f:
        lines = f.readlines()
    lines = map(lambda s: s.strip(), lines)
    lines = list(lines)
    chunk_indexes = [i for i, line in enumerate(lines) if len(line) == 0]
    chunk_indexes = [0, *chunk_indexes]
    chunks = [lines[i+1:j]
              for i, j in zip(chunk_indexes[:-1], chunk_indexes[1:])]
    chunks = chunks[1:]
    for i, chunk in enumerate(chunks):
        header, body = chunk[1], chunk[2:]
        times = [s.strip() for s in header.split("-->")]
        assert len(times) == 2
        chunks[i] = Subs(start=_parse_time(times[0]),
                         end=_parse_time(times[1]), text="\n".join(body))

    if now is None:
        dumb_waiter = _DumbWaiter()
    elif re.match("^\d+$",now) is not None:
        now = int(now)
        chunks = chunks[now-1:]
        dumb_waiter = _DumbWaiter(chunks[0].start)
    else:
        dumb_waiter = _DumbWaiter(_parse_time(now))
#        chunks = [chunk for chunk in chunks if chunk.start >= now]

    for chunk in chunks:
        dumb_waiter(chunk.start)
        click.echo(f"> {chunk.text}\n")
        dumb_waiter(chunk.end)


if __name__ == "__main__":
    subtitles()
