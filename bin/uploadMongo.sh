#!/bin/sh


mongodump --gzip --out /tmp/`date '+%F'`
scp -r /tmp/`date '+%F'` nailbiter@10.111.4.34:~/localmongodump
