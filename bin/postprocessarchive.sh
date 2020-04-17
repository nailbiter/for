#!/bin/sh

git add $1
unzip -l $1
du -hs $1
../../forperl/commit.pl
