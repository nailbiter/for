(use-modules (ice-9 regex))
(use-modules (srfi srfi-1))
(use-modules (ice-9 format))
(use-modules (rnrs io ports))

(define (commands L)
    (letrec
      ((getcommands
         (lambda(l port)
           ((lambda(token)
             (if
               (eof-object? token)
               l
               (getcommands(append l (list token))port)))
           (get-datum port)))))
      (fold append '()
            (map(lambda(fn)(getcommands '() (open-file-input-port fn)))L))))
