#!/bin/sh
echo $1 | jq -Rc '{text:.}' | curl -X POST -H 'Content-type: application/json' -d @- https://hooks.slack.com/services/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
#https://hooks.slack.com/services/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
