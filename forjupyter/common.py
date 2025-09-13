"""===============================================================================

        FILE: common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-03-08T14:23:23.859782
    REVISION: ---

==============================================================================="""

from datetime import datetime, timedelta
import logging
from jinja2 import Template
import requests
import urllib.request
import urllib.parse
import json


def weekly_period(start=0, end=None, ref_date=None):
    """
    start - inclusive
    end - exclusive
    """
    if end is None:
        end = start
    assert end >= start
    if ref_date is None:
        ref_date = datetime.now()
    end_date = ref_date - \
        timedelta(days=ref_date.weekday()+1+7*(start-1))  # sunday
    start_date = end_date - timedelta(days=7*(end-start))
    return start_date, end_date


class TrelloUrl:
    _ROOT_URL = "https://api.trello.com/1"

    def __init__(self, trello_key, trello_token):
        self._trello_key = trello_key
        self._trello_token = trello_token
        self._logger = logging.getLogger("TrelloUrl")

    def __call__(self, tpl, method_="GET", **kwargs):
        url = Template(tpl).render(kwargs)
        if "?" not in url:
            url = f"{url}?"
        url = f"{TrelloUrl._ROOT_URL}/{url}&token={self._trello_token}&key={self._trello_key}"
        self._logger.info(f"url: {url}, method: {method_}")

        if method_ == "GET":
            with urllib.request.urlopen(url) as url:
                data = json.loads(url.read().decode())
        elif method_ in ["POST", "PUT"]:
            request = urllib.request.Request(url, method=method_)
            with urllib.request.urlopen(request) as response:
                data = json.loads(response.read().decode("utf-8"))
        else:
            raise NotImplementedError

        return data


TRELLO_TEMPLATES = {
    "cards_in_list": "lists/{{list_id}}/cards",
}
