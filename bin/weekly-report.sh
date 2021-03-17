#!/bin/sh

FN=weekly-analysis

jupyter nbconvert --execute --to notebook --inplace $FN.ipynb
jupyter nbconvert $FN.ipynb --to pdf
du -hs $FN.pdf
DATE=`date "+%Y-%m-%d"`
mv $FN.pdf pdfs/$DATE-weekly-analysis.pdf
git add .
git commit -a -m "weekly report"
git push
echo 'upload report to Google Drive (https://drive.google.com/drive/u/0/folders/1tiKolJ9leAXr6e8Bu0cujrT-zfeio8oK)! (it is in pdfs folder)'
