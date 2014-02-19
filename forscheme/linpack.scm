(setlocale LC_ALL "")
(include "misc.scm")


;naive lin algebra
(define (list->mat l) (define dim (sqrt (length l)))
  (cond ((eq? (car l) 'ns) (let((m (cadr l))
                                   (n (caddr l))
                                   (M (cdddr l))
                                   )
                                  (partite (dup n m) M)))
        ((integer? dim) (let ((edim (inexact->exact dim)))(partite (dup edim edim) l)))
        (#t '())))
(define (signswitch . z)
	(define (inner2 l ctr) (if (null? l) '() (cons (if (even? ctr) (car l) (* -1 (car l))) (inner2 (cdr l) (+ ctr 1)))))
	(define (inner1 l) (inner2 l 0))
	(cond ((eq? (length z) 1) (inner1 (car z))) ((eq? (length z) 2) (inner2 (car z) (car(cdr z))))))
(define (det m) (if (= (length m) 1) (caar m)
		  (sum (map * (signswitch (car m)) 
		(map det (map 
			       (lambda (num) (map (lambda (l) (remove-elem l num)) (cdr m)))
			       (seq 0 (length (car m))) 
			       ))))))
(define (replace-col M num b) (map (lambda (l b-elem) (replace-elem l num b-elem)) M b))
(define (remove-matrix-rowcol m rownum colnum) (map (lambda (l) (remove-elem l colnum)) (remove-elem m rownum)))
(define (transpose m) (map (lambda (i) (map (lambda (l) (select l i)) m)) (seq 0 (length m))))
(define(matr-mult . l)
  (fold-right(lambda(A B)(if(eq? B 'id)A(map(lambda(row)(map(lambda(rowB)(fold + 0 (map * rowB row)))(transpose B)))A)))'id l))

;printing procedures
(define (print-matrix/latex M) (begin (format #t "\\left(\\begin{array}{")
			       (map (lambda (n) (format #t "r")) (seq 0 (length (car M))))
			       (format #t "}\n")
			       (map (lambda (row) (begin (format #t "~d" (car row))
							 (map (lambda (e) (format #t "&~d" e)) (cdr row)) (format #t "\\\\\n"))) M)
			       (format #t "\\end{array}\\right)\n")
			       ))
;Gaussian elimination
(define (GE matrix executor) (define (GE-inner matrix-inner executor-inner) 'TODO)
  (GE-inner matrix (executor (list 'init matrix))))
(define (make-executor init methods) (lambda (op) (make-executor (methods init op) methods)))
;GE->print_executor->bring_to_rowechelon

(define A (list->mat (list 0 1 2 3)))
(define B (list->mat (list 3 4 5 6)))
(display (det (transpose (list->mat(list 0 0 6 8 0 0 10 12 3 4 9 12 5 6 15 18)))))(exit)

(display (det (list->mat (list 1 -1 3 5 -4 -4 7 -6 2))))
(display A)(newline)
(fold (lambda (op mat) (let* ((res (cond 
                                    ((eq?(car op)'m) (let*((rownum(list-ref op 1)) (row(list-ref mat rownum)) (mult(list-ref op 2)))
                                                              (replace-elem mat rownum (map (lambda (c) (* c mult)) row))))
                                    ((eq?(car op)'i)(let*((i1 (cadr op))(i2 (caddr op))(r1 (list-ref mat i1))(r2(list-ref mat i2)))
                                                        (replace-elem (replace-elem mat i1 r2) i2 r1)))
                                    ((eq?(car op)'s)(let*((i1(cadr op))(i2(caddr op))(m (cadddr op))(r1(list-ref mat i1)))
                                                      (replace-elem mat i2 (map (lambda (a b)(- b(* m a) )) r1 (list-ref mat i2)))))
                                    (#t mat)
                                    ))
                             (dummy (begin (display res)(newline))))
                         res
                             )) A (list (list 's 0 1 5)(list 'm 0 2)(list 'm 1 -2)(list 'i 1 2)))
(exit)

;script
(map (lambda (l) (begin (display "\\item \\[")(print-matrix/latex (list->mat l))(display "\\]\n")(newline)))
     (list
            (list 1 -1 3 5 -4 -4 7 -6 2)
            (list 'ns 3 4 1 4 5 2 2 1 3 0 -1 3 2 2)
            (list 1 0 2 0 0 1 0 0 1)
            (list 2 0 -1 4 0 -2 0 0 0)
            (list 'ns 4 5 1 4 5 6 9 3 -2 1 4 -1 -1 0 -1 -2 -1 2 3 5 7 8)
            (list 1 -3 0 0 0 1 0 0 0 0 0 0 0 0 0 0 )
            (list 1 2 3 2 5 3 1 0 8)
            (list -1 3 -4 2 4 1
             -4 2 9)
            (list 2 6 6 2 7 6 2 7 7)
            (list 0 0 2 0 1 0 0 1 0 -1 3 0 2 1 5 -3)
            ))
