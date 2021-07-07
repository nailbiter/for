#!/bin/sh

FN=weekly-analysis
DATE=`python3 -c 'from datetime import datetime,timedelta; n = datetime.now(); print((n-timedelta(days=n.weekday())).strftime("%Y-%m-%d"))'`
#echo $DATE

jupyter nbconvert --execute --to notebook --inplace $FN.ipynb
jupyter nbconvert $FN.ipynb --to pdf
du -hs $FN.pdf
mv $FN.pdf pdfs/$DATE-weekly-analysis.pdf
git add .
git commit -a -m "weekly report"
git push
open -a /Applications/Firefox.app/Contents/MacOS/firefox  "https://drive.google.com/drive/u/0/folders/1tiKolJ9leAXr6e8Bu0cujrT-zfeio8oK"
open ./pdfs
echo 'upload report to Google Drive (https://drive.google.com/drive/u/0/folders/1tiKolJ9leAXr6e8Bu0cujrT-zfeio8oK)! (it is in pdfs folder)'
