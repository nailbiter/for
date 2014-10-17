(setlocale LC_ALL "")
(include "../forscheme/misc.scm")
(include "deffile.scm")

;replace html: try one line with local file --> try many lines with local file --> try with remote --> try with that
(define server-name "inp9822058@alumni.cs.nctu.edu.tw")

(define upload-command (string-append "scp " 
                                      apostol-filename " "
                                      gospel-filename " "
                                      (string-append(string-drop-right apostol-filename 4)".pdf")" "
                                      (string-append(string-drop-right gospel-filename 4)".pdf")" "
                                      server-name ":~/public_html/docs" 
                                      ))
(define replace-command (letrec((target-filename "test.txt");TODO: FIXME
                              (separate(lambda(lines)(string-append (car lines)"\\n"(if(=(length lines)2)(cadr lines)(separate(cdr lines))))))
                              )(string-append "sed -i \"$ i\\" (separate (list "a" "b")) "\" "target-filename )))


(display apostol-filename)(newline)
(display upload-command)(newline)
(display replace-command)(newline)

;(open-pipe upload-command OPEN_WRITE)(newline)
(open-pipe replace-command OPEN_WRITE)(newline)

;;sed "$ i\INSERT BEFORE LAST\ntesi me" test.txt
;;<td align="center"><b>05/10/2014</b></td>                                                                            
;;                                <td align="center"><a href="docs/apostol_week_17_after_the_Pentecost.pdf"                                            
;;                                                >Reading from Epistles. (Чтение из Апостола)</a></td>                                                
;;                                <td align="center"><a href="docs/gospel_week_17_after_the_Pentecost.pdf"                                             
;;                                                >Reading from Gospels (Чтение из Евангелие)</a></td>                                                 
;;                                </tr>  
