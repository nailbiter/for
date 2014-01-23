(define eng_hash (list (list 1 2) (list 3 4)))
(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))
(define (get-value l key) (if (string=? key (car (car l))) (cdr (car l)) (get-value (cdr l) key)))


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
(define (download2string url) (read-delimited "" (open-input-pipe (string-concatenate (list "wget -O - "
                                                   url)))))

(define (roman2arabic romtext) (get-value (list 
                                            (cons "I" "1")(cons "II" "2")(cons "III" "3")(cons "IV" "4")(cons "V" "5")
                                            (cons "VI" "6")(cons "VII" "7")(cons "VIII" "8")(cons "IX" "8")(cons "X" "10")
                                            (cons "XI" "11")(cons "XII" "12")(cons "XIII" "13")(cons "XIV" "14")(cons "XV" "15")
                                            )
                                          romtext))

(define (rusname2engname rusname) (get-value (list 
                   (cons "Гал" "Galatians")(cons "Кор" "Corinthians")
                   (cons "Мк" "Mark")(cons "1 Кор" "1 Corinthians")
                                            ) rusname))

(define (parse-russian-title text) (let* ((tokenized1 (mytokenize " *, *" text))
                                     (name (string-filter (lambda (char) (not (eq? #\. char))) (list-ref tokenized1 0)))
                                     (chapter (roman2arabic (list-ref tokenized1 2)))
                                     (verses (mytokenize "-" (list-ref tokenized1 3)))
                                     (verse-start (car verses))
                                     (verse-end (string-filter (lambda (char) (not (eq? #\. char)))  (cadr verses)))
                                     )(list name chapter verse-start verse-end)))

(define (get-apo-english-text name chapter verse-start verse-end)
  (let* ((source  (string-concatenate (list "http://www.kingjamesbibleonline.org/book.php?book="
                                                           (rusname2engname (string-map (lambda (char) 
                                                            (if (eq? char #\b) #\+ char)) name)) "&chapter=" chapter "&verse=")))
         (lines (map match:substring (list-matches "[a-z]+" "abc 42 def 78")))
         )
    "tesi me"));TODO
(define gosp-english-text "");TODO
