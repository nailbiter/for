;syntax: ./timing.scm file1 regex1 file2 regex2 ... timing.csv
(setlocale LC_ALL "")
(use-modules (ice-9 regex))
(use-modules (ice-9 common-list))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 popen))
(load "misc.scm")

;;global parameters
(define startrow 1)

;;start
;;(define labellist (map (lambda(m)(match:substring m 1)) (list-matches "\\\\mytiming\\{([a-z0-9]+)\\}" (read-delimited "" (open-file (list-ref (program-arguments) 1) "r")))))
(define labellist (map (lambda(m)(match:substring m 1)) (list-matches "folded\\|<label\\|([a-z0-9]+)" (read-delimited "" (open-file (list-ref (program-arguments) 1) "r")))))
;;(define timingdata
;;  (let*
;;    ((lines(mytokenize "\n" (read-delimited "" (open-file (list-ref (program-arguments) 2) "r"))))
;;    ((lines(mytokenize "\n" (read-delimited "" (open-file (list-ref (program-arguments) 2) "r"))))
;;     (lines(list-tail lines 1))
;;    (lines(map(lambda(l)(mytokenize "," l))lines))
;;    (lines(filter (lambda(i)(> (length i)0))lines))
;;    (lines(map(lambda(l)(cons(car l)(list-tail(cdr l)startrow)))lines))
;;    )lines)
;;  ))
(define (gettimingdata key)((lambda(arg)(if(eq? arg #f)(throw 'eqc)(car(cdr arg))))(find (lambda(item)(string=? key (car item)))timingdata)))

;;output

;;;debug
(if #f
  (begin
    (display labellist)
    (newline)
    (display (length labellist))
    (newline)
    (display (gettimingdata "title"))
    )
  (begin
    (display (length labellist))
    (newline)
    (display labellist)
    )
  )
;;(display (gettimingdata "title"))
;;(newline)
;;(display "hi")
