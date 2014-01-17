(define eng_hash (list (list 1 2) (list 3 4)))
(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if? (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))

(define apo_english_text "");TODO
(define gosp_english_text "");TODO
