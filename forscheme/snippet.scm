(setlocale LC_ALL "")
(use-modules (ice-9 regex))
(use-modules (ice-9 common-list))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 popen))

;global variables
(define filenametable '(("mails" 
                         ("kreport" "/for/forsnippets/mails/kreport.mail")
                         ("jspsreport" "/for/forsnippets/mails/jspsreport.mail")
                         )))
(define (getitem key table)((lambda(arg)(if(eq? arg #f)((throw 'eqc)arg)arg))(find (lambda(item)(string=? key (car item)))table)))

;output
;;(display (list-ref (program-arguments)1))
(display (read-delimited "" (open-file(string-append (getenv "HOME")(cadr(getitem (list-ref(program-arguments)2)(cdr (getitem (list-ref (program-arguments)1) filenametable)))))"r")))
