(setlocale LC_ALL "")
(use-modules (ice-9 regex))
(use-modules (ice-9 common-list))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 popen))

;misc
(define (partite ls le) (if(null? ls)le(cons(list-head le(car ls))(partite(cdr ls)(list-tail le (car ls))))))
(define (sum l) (if (null? l) 0 (+ (car l) (sum (cdr l)))))
(define (pair l1 l2 f) (if (null? l1) '() (cons (f (car l1) (car l2)) (pair (cdr l1) (cdr l2) f))))
(define (select l num) (if (<= num 0) (car l) (select (cdr l) (- num 1))))
(define (dup obj n) (if (eq? n 0) '() (cons obj (dup obj (- n 1)))))
(define (insert-at-back l elem) (if (null? l) (list elem) (cons (car l) (insert-at-back (cdr l) elem))))
(define (head l num) (if (<= num 0) '() (cons (car l) (head (cdr l) (- num 1)))))
(define (all-after l num) (if (<= num 0) l (all-after (cdr l) (- num 1))))
(define (remove-elem l num) (if (eq? num 0) (cdr l) (cons (car l) (remove-elem (cdr l)(- num 1)) )))
(define (replace-elem l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace-elem (cdr l) (- num 1) elem))))
(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))
(define (seq a b) (if (>= a b) '() (cons a (seq (+ a 1) b))))
(define (flatten ll) (if (null? ll) '() (union (car ll) (flatten (cdr ll)))))
(define (find-first-index l pred)(define(inner index li)(if(null? li)-1(if(pred(car li))index(inner(+ index 1)(cdr li)))))(inner 0 l))
(define (get-value l key) (if (null? l) (string-concatenate (list "not found:" key))
                            (if (string=? key (car (car l))) (cdr (car l)) (get-value (cdr l) key))))
(define (get-value/msg l key fallback-msg) (if (null? l) fallback-msg
                            (if (string=? key (car (car l))) (cdr (car l)) (get-value/msg (cdr l) key fallback-msg))))
(define (get-random-elt l) (list-ref l (random (length l))))
(define (trial pred maxnum) (define (inner iternum) (if (= iternum maxnum) #f (if (pred) #t (inner (inc iternum))))) (inner 0))

;string processing
(define (mytokenize regexp str) (define cr (make-regexp regexp))
  (define (inner str start)
    (if (<= (string-length str) start) '()
	((lambda () (define res (regexp-exec cr str start))
	   (if (regexp-match? res) 
	     (if (= (match:start res) start) (inner str (match:end res))
	  (cons (substring str start (match:start res)) (inner str (match:end res))))
	  (list (substring str start)))))
	))
  (inner str 0))
(define (string-split str) (if(string-null? str)'()(cons(substring str 0 1)(string-split (string-drop str 1)))))
(define (myglobsubs s pat res) (regexp-substitute/global #f pat s 'pre res 'post))
(define (concat-by-n l n)(cond ((null? l) '())((<(length l)n)(list (string-concatenate l)))(#t
                                                                                            (cons (string-concatenate (list-head l n))
                                                                                           (concat-by-n (list-tail l n) n)))))

;download2string
(define (download2string url) (read-delimited "" (open-input-pipe (string-concatenate (list "wget -O - "
                                                   url)))))

;saving variables in .scm files
(define (save-string-mapping table var-name file-name)
  (let* ((outport (open-file file-name "w")))
    (begin (format outport "(setlocale LC_ALL \"\")\n(define ~a (list " var-name)
           (map (lambda (pair) (format outport "(cons ~s ~s)\n" (car pair) (cdr pair))) table)
           (format outport "))")
           )
    ))

;script
(display(fold max 0 '(1 2 3 4)))(newline)
(define clocks (map (lambda(l)(let((h(car l))(m(cadr l)))(+ h (/ m 60.0))))
                    '((9 18)(8 35)(10 45)(11 30)(3 06) (7 50)(4 22)(10 12)(7 47)(4 28)(11 16)(7 08)(5 53)(8 0))))
(display clocks)(newline)
(display (sort clocks <))
(fold (lambda(cur ctr prev)(begin(format #t "~,3f\n"(/(inc ctr)14))(+ prev cur))) 0 (sort clocks <)(seq 0 (length clocks)))
