(define eng_hash (list (list 1 2) (list 3 4)))
(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))

(define (get-apo-english-text name chapter verse-start verse-end) "englis");TODO
(define gosp-english-text "");TODO
