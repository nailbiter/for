(setlocale LC_ALL "")
(include "../forscheme/misc.scm")
(include "deffile.scm")

;replace html: try one line with local file --> try many lines with local file --> try with remote --> try with that
(define server-name "inp9822058@alumni.cs.nctu.edu.tw")
(define apostol-pdf (string-append(string-drop-right apostol-filename 4)".pdf"))
(define gospel-pdf (string-append(string-drop-right gospel-filename 4)".pdf"))

(define upload-command (string-append "scp " apostol-filename " "gospel-filename " "apostol-pdf" "gospel-pdf" "
                                      server-name ":~/public_html/docs" ))
(define replace-command (letrec((target-filename "~/public_html/readings.html")
                              (separate(lambda(lines)(string-append (car lines)"\\n"(if(=(length lines)2)(cadr lines)(separate(cdr lines))))))
                              (lines(list (string-append "<tr><td align=\"center\"><b>" date "</b></td>")
                                          (string-append "<td align=\"center\"><a href=\"docs/" apostol-pdf "\"")
                                          ">Reading from Epistles. (Чтение из Апостола)</a></td>"
                                          (string-append "<td align=\"center\"><a href=\"docs/"gospel-pdf"\"")
                                          ">Reading from Gospels (Чтение из Евангелие)</a></td></tr>" ))
                              )
                          (string-append "echo \"" " ~/bin/sed -i '$ i\\" (separate lines) "' "target-filename "\" | ssh "server-name" 'csh -s'" )
                          ))

(display apostol-filename)(newline)
(display upload-command)(newline)
(display replace-command)(newline)

(open-pipe upload-command OPEN_WRITE)(newline)
(open-pipe replace-command OPEN_WRITE)(newline)

;;sed "$ i\INSERT BEFORE LAST\ntesi me" test.txt
