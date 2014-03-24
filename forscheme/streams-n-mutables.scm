;mutable objects 3.3
(define (last-pair l) (if (null? (cdr l)) l (last-pair (cdr l))))
(define (append! list item) (set-cdr! (last-pair list) item) list)
(define (make-cycle x) (set-cdr! (last-pair x) x) x)
;streams 3.5.2 3.5.3
(define (cons-stream a b) (cons a (delay b)))
(define (stream-car str) (car str))
(define (stream-cdr str) (force (cdr str)))
(define (stream-ref stream index) (if (= index 0) (stream-car stream) (stream-ref (cdr-stream stream) (- index 1))))
(define (integers-from n) (cons-stream n (integers-from (+ n 1))))
;(define integers (integers-from 0)) ;unsafe:(
(define (stream-ref stream index) (if (= index 0) (stream-car stream) (stream-ref (stream-cdr stream) (- index 1))))