(use-modules (ice-9 regex))
(use-modules (srfi srfi-1))
(use-modules (ice-9 format))
(use-modules (rnrs io ports))
(load "aux.scm")

;procedures
(define (mynewcmd sym argnum text)
  (format #t "\\newcommand{\\~a}~a{~a}~%"
          (symbol->string sym)
          (if(zero? argnum)""(format #f "[~d]"argnum))
          text))

;main
(map(lambda(l)(mynewcmd(list-ref l 0)(list-ref l 1)(list-ref l 2)))(commands(list-tail (command-line) 1)))
