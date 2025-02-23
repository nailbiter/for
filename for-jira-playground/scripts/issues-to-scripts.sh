#!/bin/sh
jira-cli.py api jql -s 0 -m 100 -j 'project = ML3 AND status IN ("To Do", "In Progress") AND sprint != empty ORDER BY created DESC' -o json|jq -f jq/issues-by-sprints.jq|jq '.|sort'
jira-cli.py api jql -s 100 -m 100 -j 'project = ML3 AND status IN ("To Do", "In Progress") AND sprint != empty ORDER BY created DESC' -o json|jq -f jq/issues-by-sprints.jq|jq '.|sort'
