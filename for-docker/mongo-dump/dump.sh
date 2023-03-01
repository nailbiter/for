#!/bin/sh

DATE=`date "+%Y-%m-%d"`
#echo $DATE
OUTDIR=dump-$DATE
rm -rf $OUTDIR
echo $MONGO_URL
echo $PASSWORD
mongodump --username=nailbiter --password=$PASSWORD "$MONGO_URL"  --gzip --out=$OUTDIR
