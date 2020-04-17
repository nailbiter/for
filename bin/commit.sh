#!/bin/sh

git commit --allow-empty -a -m "`git status -s --untracked-files=no`"
