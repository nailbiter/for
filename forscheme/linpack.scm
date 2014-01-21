(use-modules (ice-9 format))

;misc
(define (remove l n) (if (eq? n 0) (cdr l) (cons (car l) (remove (cdr l) (- n 1)))))
(define (sum l) (if (null? l) 0 (+ (car l) (sum (cdr l)))))
(define (pair l1 l2 f) (if (null? l1) '() (cons (f (car l1) (car l2)) (pair (cdr l1) (cdr l2) f))))
(define (select l num) (if (<= num 0) (car l) (select (cdr l) (- num 1))))
(define (dup obj n) (if (eq? n 0) '() (cons obj (dup obj (- n 1)))))
(define (insert-at-back l elem) (if (null? l) (list elem) (cons (car l) (insert-at-back (cdr l) elem))))
(define (head l num) (if (<= num 0) '() (cons (car l) (head (cdr l) (- num 1)))))
(define (all-after l num) (if (<= num 0) l (all-after (cdr l) (- num 1))))
(define (remove-elem l num) (if (eq? num 0) (cdr l) (remove-elem (cdr l) (- num 1))))
(define (replace-elem l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace-elem (cdr l) (- num 1) elem))))

;naive lin algebra
(define (list->mat l) (define (inner mat l num) (if (null? l) mat (inner (insert-at-back mat (head l num)) (all-after l num) num)))
  (if (not (integer? (sqrt (length l)))) '() (inner '() l (sqrt (length l)))))
(define (signswitch . z)
	(define (inner2 l ctr) (if (null? l) '() (cons (if (even? ctr) (car l) (- (car l))) (inner2 (cdr l) (+ ctr 1)))))
	(define (inner1 l) (inner2 l 0))
	(cond ((eq? (length z) 1) (inner1 (car z))) ((eq? (length z) 2) (inner2 (car z) (car(cdr z))))))
(define (det m) (if (eq? (length m) 1) (car (car m)) 
		  (sum (map * (signswitch (car m)) 
		(map det (map 
			       (lambda (num) (map (lambda (l) (remove l num)) (cdr m)))
			       (seq 0 (length (car m))) 
			       ))))))
(define (replace-col M num b) (map (lambda (l b-elem) (replace-elem l num b-elem)) M b))
(define (remove-matrix-rowcol m rownum colnum) (map (lambda (l) (remove-elem l colnum)) (remove-elem m rownum)))
(define (transpose m) (map (lambda (i) (map (lambda (l) (select l i)) m)) (seq 0 (length m))))

;printing procedures
(define (latex-printmatrix M) (begin (format #t "\\left(\\begin{array}{")
			       (map (lambda (n) (format #t "r")) (seq 0 (length M)))
			       (format #t "}\n")
			       (map (lambda (row) (begin (format #t "~d" (car row))
							 (map (lambda (e) (format #t "&~d" e)) (cdr row)) (format #t "\\\\\n"))) M)
			       (format #t "\\end{array}\\right)\n")
			       ))

;(display (length (list  1 2 3)))
;(newline)
;(display (remove (list  1 2 3) 1))
;(newline)
;(display (signswitch (list 1 2 3 4)))
;(newline)
;(display (seq 0 5));0 1 2 3 4 5
;(newline)

(define M (list->mat (list 4 1 1 1 3 7 -1 1 7 3 -5 8 1 1 1 2)))
(define b (list 6 1 -3 3))
(display (det (replace-col M 2 b)))(newline)
(display (det M))(newline)(newline)
(map (lambda (i) (begin (display (det (replace-col M i b)))(newline))) (seq 0 4))
(newline)(display (det (list->mat (list -6 -3 -7 -8 -4 -7 -24 -12 -6))))

;(display (transpose M))
;(newline)
;(display (det (replace-col M 2 b)))
;(newline)
;(display (det M))
;(display (map (lambda (l) (det (list->mat l))) (list
;						 (list 2 1 3 2 6 8 6 8 18)
