"""===============================================================================

        FILE: miscutils/_keyman.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2021-01-06T18:15:01.515349
    REVISION: ---

==============================================================================="""

import pymongo
import pandas as pd
from datetime import datetime


class KeyClient:
    def __init__(self, tag=set()):
        self._mongo_client = pymongo.MongoClient()
        self._client = self._mongo_client.keyman.keys
        self._tags = set(tag)

    def _get_df(self, **kwargs):
        df = pd.DataFrame(self._client.find(kwargs))
        df = df[[self._tags <= set(t) for t in df["tags"]]]
        return df

    def get(self, key):
        df = self._get_df(key=key)
        assert len(df) == 1, (df, key)
        return list(df["value"])[0]

    def list(self):
        df = self._get_df()
        df = df.drop(columns=["value", "_id"])
        print(df)

    def set(self, key, value):
        self._mongo_client.keyman.actions.insert_one({"action": "set", "kwargs": {
                                               "key": key, "value": value}, "date": datetime.utcnow()})
        self._client.insert_one(
            {"key": key, "value": value, "tags": list(self._tags)})
