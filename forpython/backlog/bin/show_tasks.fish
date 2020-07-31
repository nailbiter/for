#!/usr/local/bin/fish

. venv/bin/activate.fish
backlog --oformat json get-issues --order asc --assigneeid 201613 --sort dueDate |jq -r '.|sort_by(.status.name)|.[]|[.summary,.dueDate,.status.name]|@tsv'|column -s \t -t
