#!/usr/bin/env python3
"""===============================================================================

        FILE: calendar-free-time.py

       USAGE: ./calendar-free-time.py

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2022-04-08T13:33:05.702574
    REVISION: ---

==============================================================================="""

import click
#from dotenv import load_dotenv
import os
from os import path
import logging
from datetime import datetime, timedelta, timezone
import os.path

from google.auth.transport.requests import Request
from google.oauth2.credentials import Credentials
from google_auth_oauthlib.flow import InstalledAppFlow
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError

import pandas as pd
import pytz
import itertools
from jinja2 import Template
import logging

# If modifying these scopes, delete the file token.json.
SCOPES = ['https://www.googleapis.com/auth/calendar.readonly']


class _TimeSegmentsSequence:
    def __init__(self):
        self._date = None
        self._segments = []

    def _is_segment_intersects(_, s1, e1, s2, e2):
        if s1 > s2:
            s1, e1, s2, e2 = s2, e2, s1, e1
        return e1 >= s2

    def __call__(self, start, end):
        assert start.date() == end.date()
        if self._date is None:
            self._date = start.date()
        else:
            assert self._date == start.date()

        intersecting_segments = [
            (i, (s, e)) for i, (s, e) in enumerate(self._segments) if self._is_segment_intersects(start, end, s, e)]
        for i, _ in intersecting_segments:
            self._segments.pop(i)

        new_segment = min([start, *list(map(lambda t: t[1][1], intersecting_segments))]), max(
            [end, *list(map(lambda t: t[1][1], intersecting_segments))])
        self._segments.append(new_segment)
        self._segments.sort(key=lambda t: t[0])

    def _merge_segments(_, s1, e1, s2, e2):
        return min(s1, s2), max(e1, e2)

    @classmethod
    def complement(cls, start_hour, end_hour, original_object):
        res = cls()
        d = original_object._date
#        print(d)
        res._date = d
        start_date, end_date = [datetime(
            year=d.year, month=d.month, day=d.day, hour=hour) for hour in [start_hour, end_hour]]
        chain = list(itertools.chain(
            [start_date],
            *original_object._segments,
            [end_date],
        ))
        segments = [tuple(chain[i:i+2]) for i in range(0, len(chain), 2)]
        segments = [
            (max(s, start_date), min(e, end_date))
            for s, e
            in segments
        ]
        segments = [
            (s, e)
            for s, e
            in segments
            if e > s
        ]
        res._segments = segments
        return res

    def __str__(self):
        return Template("""
        {{date.strftime("%Y-%m-%d (%a)")}}: {%for s,e in segments%}{{s.strftime("%H:%M")}}~{{e.strftime("%H:%M")}}{{", " if not loop.last}}{%endfor%}
        """).render({
            "date": self._date,
            "segments": self._segments,
        }).strip()

    def filter(self, td):
        self._segments = [(s, e) for s, e in self._segments if (
            e-s) >= td]

    def thicken(self, td):
        #        td = timedelta(minutes=30)
        self._segments = [(s-td, e+td) for s, e in self._segments]
        segments = []
        cur = None
        for segment in self._segments:
            if cur is None:
                cur = segment
            elif self._is_segment_intersects(*segment, *cur):
                cur = self._merge_segments(*segment, *cur)
            else:
                segments.append(cur)
                cur = segment
        if cur is not None:
            segments.append(cur)

        self._segments = segments


def _init():
    creds = None
    # The file token.json stores the user's access and refresh tokens, and is
    # created automatically when the authorization flow completes for the first
    # time.
    if os.path.exists('calendar_token.json'):
        creds = Credentials.from_authorized_user_file(
            'calendar_token.json', SCOPES)
    # If there are no (valid) credentials available, let the user log in.
    if not creds or not creds.valid:
        if creds and creds.expired and creds.refresh_token:
            creds.refresh(Request())
        else:
            flow = InstalledAppFlow.from_client_secrets_file(
                'calendar_credentials.json', SCOPES)
            creds = flow.run_local_server(port=0)
        # Save the credentials for the next run
        with open('calendar_token.json', 'w') as token:
            token.write(creds.to_json())

    service = build('calendar', 'v3', credentials=creds)
    return service


def _align_td(td, align_unit="hours", align_logic="left"):
    assert align_unit in ["hours"]
    assert align_logic in ["left"]
    return timedelta(seconds=td.total_seconds()//3600*3600)


def _get_local_timezone():
    # code taken from https://stackoverflow.com/a/39079819
    LOCAL_TIMEZONE = datetime.now(timezone.utc).astimezone().tzinfo
    return LOCAL_TIMEZONE


@click.command()
@click.option("-w", "--week-shift", type=int, default=0)
@click.option("-c", "--additional-calendar", multiple=True)
@click.option("-t", "--thicken-minutes", type=int, default=30)
@click.option("-f", "--filter-minutes", type=int, default=60)
@click.option("--days-range", type=(int, int), default=(0, 4), help="Monday=0")
@click.option("--hours-range", type=(int, int), default=(9, 19))
def calendar_free_time(week_shift, additional_calendar, thicken_minutes, days_range, filter_minutes, hours_range):
    """Shows basic usage of the Google Calendar API.
    Prints the start and name of the next 10 events on the user's calendar.
    """
    try:
        service = _init()
    except HttpError as error:
        print('An error occurred: %s' % error)

    calendars_df = pd.DataFrame(service.calendarList().list().execute()[
                                "items"])
    # Call the Calendar API
    now = datetime.now()
    now -= timedelta(days=now.weekday())
    now += timedelta(days=7*week_shift)
    now = now.replace(
        **{k: 0 for k in ["hour", "minute", "second", "microsecond"]})
    now = datetime.utcfromtimestamp(now.timestamp())
    logging.warning(now)

    events = []
    calendars_df = calendars_df[[
        (s in list(additional_calendar) or p == True)
        for p, s
        in calendars_df[["primary", "summary"]].values
    ]]

    for calendarId, timeZone in calendars_df[["id", "timeZone"]].values:
        events_result = service.events().list(
            calendarId=calendarId,
            timeMin=now.isoformat()+"Z",
            timeMax=(now+timedelta(days=7)).isoformat()+"Z",
            singleEvents=True,
            orderBy='startTime'
        ).execute()
        _events = events_result.get('items', [])
        events.extend(map(lambda o: {**o, "timeZone": timeZone}, _events))
#     print(events)

    if not events:
        print('No upcoming events found.')
        return

      # Prints the start and name of the next 10 events
    events_df = pd.DataFrame(events)
    events_df = events_df[events_df.start.apply(lambda o:"dateTime" in o)]
    events_df = events_df[["summary", "start", "end", "timeZone"]]
    _S = 4+1+2+1+2+1+2+1+2+1+2
    for k in ["start", "end"]:
        events_df[k] = events_df[k].apply(
            lambda o: datetime.strptime(o["dateTime"][:_S], "%Y-%m-%dT%H:%M:%S"))
        events_df[k] = [
            e - _align_td(pytz.timezone(tz)._utcoffset)
            for e, tz
            in events_df[[k, "timeZone"]].values
        ]
        events_df[k] += _align_td(_get_local_timezone().utcoffset(None))
    events_df = events_df.sort_values(by=["start"])
    events_df["day"] = events_df.start.apply(lambda dt: dt.weekday())
    events_df = events_df[(days_range[0] <= events_df.day)
                          & (events_df.day <= days_range[1])]
    times = {}
    logging.warning(events_df.to_string())
    for day, slice_ in events_df.groupby("day"):
        segments = _TimeSegmentsSequence()
        for s, e in zip(slice_.start, slice_.end):
            segments(s, e)
        segments.thicken(timedelta(minutes=thicken_minutes))
        segments = _TimeSegmentsSequence.complement(*hours_range, segments)
        segments.filter(timedelta(minutes=filter_minutes))
        print(f"* {segments}")


if __name__ == "__main__":
    #    if path.isfile(".env"):
    #        logging.warning("loading .env")
    #        load_dotenv()
    calendar_free_time()
