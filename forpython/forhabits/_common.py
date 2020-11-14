"""===============================================================================

        FILE: _common.py

       USAGE: (not intended to be directly executed)

 DESCRIPTION: 

     OPTIONS: ---
REQUIREMENTS: ---
        BUGS: ---
       NOTES: ---
      AUTHOR: Alex Leontiev (alozz1991@gmail.com)
ORGANIZATION: 
     VERSION: ---
     CREATED: 2020-11-14T11:57:56.652474
    REVISION: ---

==============================================================================="""
from pymongo import MongoClient


def get_remote_mongo_client(mongo_pass):
    return MongoClient(
        f"mongodb://nailbiter:{mongo_pass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
