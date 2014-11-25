(setlocale LC_ALL "")
(include "../forscheme/misc.scm")
(include "deffile.scm")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))

;replace html: try one line with local file --> try many lines with local file --> try with remote --> try with that
(define server-name "inp9822058@alumni.cs.nctu.edu.tw")
(define apostol-pdf (string-append(string-drop-right apostol-filename 4)".pdf"))
(define gospel-pdf (string-append(string-drop-right gospel-filename 4)".pdf"))
(define (separate lines) (string-append (car lines)"\\n"(if(=(length lines)2)(cadr lines)(separate(cdr lines)))))

(define upload-command (string-append "scp " apostol-filename " "gospel-filename " "apostol-pdf" "gospel-pdf" "
                                      server-name ":~/public_html/docs" ))
(define replace-command (let*((target-filename "~/public_html/readings.html")
                              (lines(list (string-append "<tr><td align=\"center\"><b>" date "</b></td>")
                                          (string-append "<td align=\"center\"><a href=\"docs/" apostol-pdf "\"")
                                          ">Reading from Epistles. (Чтение из Апостола)</a></td>"
                                          (string-append "<td align=\"center\"><a href=\"docs/"gospel-pdf"\"")
                                          ">Reading from Gospels (Чтение из Евангелие)</a></td></tr>" ))
                              (proxytxt "test.txt")
                              (outport (open-file proxytxt "w"))
                              (remote-cmd (string-append "~/bin/sed -i '$ i\\" (separate lines) "' "target-filename))
                              (dum (write-line remote-cmd outport))
                              )
                          (string-append "cat " proxytxt " | ssh "server-name" 'csh -s'" )
                          ))

(display apostol-filename)(newline)
(display upload-command)(newline)
(display replace-command)(newline)

(open-pipe upload-command OPEN_WRITE)(newline)
(open-pipe replace-command OPEN_WRITE)(newline)

;;sed "$ i\INSERT BEFORE LAST\ntesi me" test.txt
