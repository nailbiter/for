from bson.objectid import ObjectId
import pymongo
import pandas as pd
from pytz import timezone
from bson.codec_options import CodecOptions
import matplotlib.pyplot as plt
from pymongo import MongoClient

#global const's
WEEKS = 8
TIMESTAMPS_PER_HOUR = 2
#global var's
local_client = MongoClient('localhost', 27017)
coll = local_client.admin.passwords
doc = coll.find_one({"key":"MONGOMLAB"})
mongopass = doc["value"]
client = client = MongoClient(f"mongodb://nailbiter:{mongopass}@ds149672.mlab.com:49672/logistics?retryWrites=false")
#procedures
def fix_mongo_record(collection_name,oid,key,value):
    res = client.logistics[collection_name].update_one({"_id":ObjectId(oid)},{"$set":{key:value}})
    return res.modified_count
