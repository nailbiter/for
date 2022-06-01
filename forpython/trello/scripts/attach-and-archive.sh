#!/bin/sh
SRC=$1
DST=$2
./trello.py assistantbot add-url-link $DST $SRC && ./trello.py assistantbot archive-task $SRC
