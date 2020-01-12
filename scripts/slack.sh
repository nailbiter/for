#!/bin/sh
echo $1 | jq -Rc '{text:.}' | curl -X POST -H 'Content-type: application/json' -d @- $SLACK_WEBHOOK
