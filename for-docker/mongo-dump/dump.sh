#!/bin/sh

DATE=`date "+%Y-%m-%d"`
#echo $DATE
mongodump --username=nailbiter --password=$PASSWORD "$MONGO_URL"  --gzip --out=dump-$DATE
