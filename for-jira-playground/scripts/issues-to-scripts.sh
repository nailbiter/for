#!/bin/sh
jira-cli.py api jql -j 'project = ML3 AND status IN ("To Do", "In Progress") AND sprint != empty ORDER BY created DESC' -o json|jq -f jq/issues-by-sprints.jq
