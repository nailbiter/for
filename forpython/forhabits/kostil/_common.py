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
from pytz import timezone
from bson.codec_options import CodecOptions


def get_remote_mongo_client(mongo_pass):
    return MongoClient(
        f"mongodb+srv://nailbiter:{mongo_pass}@cluster0.gaq9o.mongodb.net/logistics?authSource=admin&replicaSet=atlas-1372ty-shard-0&w=majority&readPreference=primary&appname=MongoDB%20Compass&retryWrites=true&ssl=true")

def get_coll(mongo_pass,collection_name):
    client = get_remote_mongo_client(mongo_pass)
    coll = client.logistics[collection_name].with_options(
        codec_options=CodecOptions(tz_aware=True, tzinfo=timezone('Asia/Tokyo')))
    return coll
