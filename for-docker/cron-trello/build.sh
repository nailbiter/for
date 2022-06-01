#!/bin/sh
IMAGE_NAME=cron-trello

[ -z "$TRELLO_KEY" ] && exit 1
[ -z "$TRELLO_TOKEN" ] && exit 1
[ -z "$TAG" ] && exit 1
[ -z "$CRONTRELLO_POST_REPORT_HOOK" ] && exit 1

docker build -t nailbiter/$IMAGE_NAME:latest . --build-arg TRELLO_KEY=$TRELLO_KEY --build-arg TRELLO_TOKEN=$TRELLO_TOKEN --build-arg TAG=$TAG --build-arg CRONTRELLO_POST_REPORT_HOOK=$CRONTRELLO_POST_REPORT_HOOK
