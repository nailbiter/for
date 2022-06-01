"""===============================================================================

        FILE: /Users/nailbiter/for/forpython/trello/_trello/assistantbot_digest.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-05-19T17:08:35.208516
    REVISION: ---

==============================================================================="""
import hashlib
from _trello.common import ROOT_URL as _ROOT_URL
from _trello.common import add_logger
import urllib
import pandas as pd
import json
import re

ALPHABET = "01234567890"+"AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"


def _char_to_int(c):
    if c in "0123456789":
        return "0123456789".find(c)+48
    elif c in "abcdef":
        return "abcdef".find(c)+97
    else:
        raise NotImplementedError(c)


def id_to_digest(id_):
    digest = hashlib.sha1(id_.encode("ascii")).hexdigest()
    digest = digest[:8]
    i = 0
    res = []
    for i in range(0, len(digest), 2):
        num = 16*_char_to_int(digest[i]) + _char_to_int(digest[i+1])
        res.append(ALPHABET[num % len(ALPHABET)])
    return "".join(res)

@add_logger
def get_tasks(list_id,trello_key,trello_token,logger=None):
    url = f"{_ROOT_URL}/lists/{list_id}/cards?&key={trello_key}&token={trello_token}"
    logger.info(f"url: {url}")
    with urllib.request.urlopen(url) as url:
        data = json.loads(url.read().decode())
    df = pd.DataFrame(data)
    df["hash"] = df["id"].apply(id_to_digest)
    df = df.loc[:,["id","name","hash","url","pos"]]
    return df

def is_digest(s):
    return re.match(r"^["+ALPHABET+"]{4}$",s) is not None
