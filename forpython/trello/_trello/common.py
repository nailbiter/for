"""===============================================================================

        FILE: ./_trello/common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-19T17:18:07.762266
    REVISION: ---

==============================================================================="""
import logging
from jinja2 import Template
import urllib.request
import json
import urllib.parse

ROOT_URL = "https://api.trello.com/1"


def add_logger(f):
    logger = logging.getLogger(f.__name__)

    def _f(*args, **kwargs):
        return f(*args, logger=logger, **kwargs)
    _f.__name__ = f.__name__
    return _f


class TrelloUrl:
    _ROOT_URL = ROOT_URL

    def __init__(self, trello_key, trello_token):
        self._trello_key = trello_key
        self._trello_token = trello_token
        self._logger = logging.getLogger("TrelloUrl")

    def __call__(self, tpl, method_="GET", **kwargs):
        url = Template(tpl).render(kwargs)
        if "?" not in url:
            url = f"{url}?"
        url = f"{TrelloUrl._ROOT_URL}/{url}&token={self._trello_token}&key={self._trello_key}"
        self._logger.info(f"url: \"{url}\", method: \"{method_}\"")

        if method_ == "GET":
            with urllib.request.urlopen(url) as url:
                data = json.loads(url.read().decode())
        elif method_ in ["POST", "PUT","DELETE"]:
            request = urllib.request.Request(url, method=method_)
            with urllib.request.urlopen(request) as response:
                data = json.loads(response.read().decode("utf-8"))
        else:
            raise NotImplementedError

        return data
