#!/bin/sh

table=$1
shift
fn=$1
shift

bucket=dtws-leon-private
dir=~/Documents/datawise/private-bucket/

bq extract $@ $table gs://$bucket/$fn
gsutil -m rsync gs://$bucket $dir
