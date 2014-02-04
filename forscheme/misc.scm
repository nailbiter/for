(use-modules (ice-9 regex))
(use-modules (ice-9 common-list))
(define (flatten ll) (if (null? ll) '() (union (car ll) (flatten (cdr ll)))))
(define (get-value l key fallback-msg) (if (null? l) fallback-msg
                            (if (string=? key (car (car l))) (cdr (car l)) (get-value (cdr l) key fallback-msg))))
