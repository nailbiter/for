#!/bin/sh

. ./deffile.sh

server_name="inp9822058@alumni.cs.nctu.edu.tw"
apostol_pdf=`echo $apostol_filename | rev | cut -c 4- | rev`pdf
gospel_pdf=`echo $gospel_filename | rev | cut -c 4- | rev`pdf

scp $apostol_filename $gospel_filename $apostol_pdf $gospel_pdf $server_name:~/public_html/docs

echo -n "~/bin/sed -i '$ i\<tr><td align=\"center\"><b>" > ./testo.txt
echo -n $date >> ./testo.txt
echo -n "</b></td>"'\\n'"<td align=\"center\"><a href=\"docs/" >> ./testo.txt
echo -n $apostol_pdf >> ./testo.txt
echo -n "\""'\\n'">Reading from Epistles. (Чтение из Апостола)</a></td>"'\\n'"<td align=\"center\"><a href=\"docs/" >> ./testo.txt
echo -n $gospel_pdf >> ./testo.txt
echo -n "\""'\\n'">Reading from Gospels (Чтение из Евангелие)</a></td></tr>' " >> ./testo.txt
echo -n "~/public_html/readings.html" >> ./testo.txt

cat ./testo.txt | ssh $server_name 'csh -s'
