#!/bin/sh

jupyter nbconvert weekly-analysis.ipynb --to pdf
du -hs weekly-analysis.pdf
DATE=`date "+%Y-%m-%d"`
mv weekly-analysis.pdf /Users/nailbiter/Google\ Drive/self-management/reports/$DATE-weekly-analysis.pdf
