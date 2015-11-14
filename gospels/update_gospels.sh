#!/bin/sh

. ./deffile.sh

server_name="inp9822058@alumni.cs.nctu.edu.tw"
apostol_pdf=`echo $apostol_filename | rev | cut -c 4- | rev`pdf
gospel_pdf=`echo $gospel_filename | rev | cut -c 4- | rev`pdf

#scp $apostol_filename $gospel_filename $apostol_pdf $gospel_pdf $server_name:~/public_html/docs#FIXME

echo -n "~/bin/sed -i '$ i\<tr><td align=\"center\"><b>" > ./testo.txt
echo -n $date >> ./testo.txt
echo -n "</b></td>"'\\n'"<td align=\"center\"><a href=\"docs/" >> ./testo.txt
echo -n $apostol_pdf >> ./testo.txt
echo -n "\""'\\n'">Reading from Epistles. (Чтение из Апостола)</a></td>"'\\n'"<td align=\"center\"><a href=\"docs/" >> ./testo.txt
echo -n $gospel_pdf >> ./testo.txt
echo -n "\""'\\n'">Reading from Gospels (Чтение из Евангелие)</a></td></tr>' " >> ./testo.txt
echo -n "~/public_html/readings.html" >> ./testo.txt

cat ./testo.txt | ssh $server_name 'csh -s'

#(define (separate lines) (string-append (car lines)"\\n"(if(=(length lines)2)(cadr lines)(separate(cdr lines)))))
#
#(define upload-command (string-append "scp " apostol-filename " "gospel-filename " "apostol-pdf" "gospel-pdf" "
#                                      server-name ":~/public_html/docs" ))
#(define replace-command (let*((target-filename "~/public_html/readings.html")
#                              (lines(list (string-append "<tr><td align=\"center\"><b>" date "</b></td>")
#                                          (string-append "<td align=\"center\"><a href=\"docs/" apostol-pdf "\"")
#                                          ">Reading from Epistles. (Чтение из Апостола)</a></td>"
#                                          (string-append "<td align=\"center\"><a href=\"docs/"gospel-pdf"\"")
#                                          ">Reading from Gospels (Чтение из Евангелие)</a></td></tr>" ))
#                              (proxytxt "test.txt")
#                              (outport (open-file proxytxt "w"))
#                              (remote-cmd (string-append "~/bin/sed -i '$ i\\" (separate lines) "' "target-filename))
#                              (dum (write-line remote-cmd outport))
#                              )
#                          (string-append "cat " proxytxt " | ssh "server-name" 'csh -s'" )
#                          ))
#
#(display apostol-filename)(newline)
#(display upload-command)(newline)
#(display replace-command)(newline)
#
#(open-pipe upload-command OPEN_WRITE)(newline)
#(open-pipe replace-command OPEN_WRITE)(newline)
