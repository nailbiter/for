#!/bin/sh

DATE=`date "+%Y-%m-%d"`
#echo $DATE
OUTDIR=dump-$DATE
rm -rf $OUTDIR
mongodump --username=nailbiter --password=$PASSWORD "$MONGO_URL"  --gzip --out=$OUTDIR
