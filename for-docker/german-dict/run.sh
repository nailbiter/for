#!/bin/sh

IMAGE_NAME=cron-trello

#[ -z "$TRELLO_KEY" ] && exit 1

docker run nailbiter/$IMAGE_NAME:latest leo -l de2en $1
