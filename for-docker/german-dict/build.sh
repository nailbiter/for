#!/bin/sh

IMAGE_NAME=cron-trello

#[ -z "$TRELLO_KEY" ] && exit 1

docker build -t nailbiter/$IMAGE_NAME:latest . 
