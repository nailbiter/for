#!/home/nailbiter/bin/guile -s
!#

;(setlocale LC_ALL "")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))

(load "../../for/gospels/s3_aux.scm")

(set-port-encoding! (current-output-port) "UTF-8")
(display "Content-Type: text/html; charset=UTF-8\n\n")
(display "<head><meta charset=\"UTF-8\"></head>")
(display (caar rus2rusurl-table))

;TODO: try link
