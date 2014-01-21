(define eng_hash (list (list 1 2) (list 3 4)))
(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))
(define (get-value l key) (if (string=? key (caar l)) (cadr l) (get-value (cdr l) key)))


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
(define (wait n) 
  (do ((curtime (current-time))) ((< (current-time) (+ curtime n))) ))
(define (download2string url) ;(let ((pid (system (string-concatenate (list "wget -O index.html " url)) )))
(system (string-concatenate (list "wget -O index.html " url)) ))
                               ;(open-pipe (string-concatenate (list "wget -O index.html " url)) OPEN_READ)
                               ;(wait 5)
                               ;(display 32);(newline)(display 42)
                               ;(read-delimited "" (open-file "index.html" "r"))
                                               ;))

(define (roman2arabic romtext) (get-value (list (cons "I" 1))
                                          romtext))

(define (parse-russian-title text) (map (lambda (s) (format #f "~d" (string-length s)))(mytokenize " *, *" text)))

(define (get-apo-english-text name chapter verse-start verse-end) 
  (string-concatenate (list name "\n" chapter "\n" verse-start "\n" verse-end)));TODO
(define gosp-english-text "");TODO
