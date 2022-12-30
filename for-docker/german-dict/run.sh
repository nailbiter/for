#!/bin/sh

IMAGE_NAME=german-dict

#[ -z "$TRELLO_KEY" ] && exit 1

docker run nailbiter/$IMAGE_NAME:latest leo -l de2en $1
