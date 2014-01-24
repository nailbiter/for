(use-modules (ice-9 common-list))
(define (flatten ll) (if (null? ll) '() (union (car ll) (flatten (cdr ll)))))
