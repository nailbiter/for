#!/bin/sh

FN=weekly-analysis

jupyter nbconvert --execute --to notebook --inplace $FN.ipynb
jupyter nbconvert $FN.ipynb --to pdf
du -hs $FN.pdf
DATE=`date "+%Y-%m-%d"`
mv $FN.pdf /Users/nailbiter/Google\ Drive/self-management/reports/$DATE-weekly-analysis.pdf
git add .
git commit -a -m "weekly report"
git push
