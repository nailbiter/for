#!/bin/sh

DATE=`date "+%Y-%m-%d"`
#echo $DATE
OUTDIR=/output/dump-$DATE
rm -rf $OUTDIR
echo $MONGO_URL
echo $PASSWORD
mongodump --username=nailbiter --password=$PASSWORD --uri="$MONGO_URL"  --gzip --out=$OUTDIR
