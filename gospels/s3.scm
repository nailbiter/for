(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))

(include "s3_aux.scm")

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
(define (replace-in-file in out l) (define lines (mytokenize "\n" (read-delimited "" (open-file in "r"))))
  (define outport (open-file out "w"))
  (define (subst line keyvals) (if (null? keyvals) line (cond 
  ((string=? (car (car keyvals)) line)(cdr (car keyvals)))
  ((regexp-match? (string-match (caar keyvals) line)) (regexp-substitute #f (string-match (caar keyvals) line) 'pre (cdar keyvals) 'post))
  (else (subst line (cdr keyvals) )))))
  (map (lambda (line)(write-line (subst line l) outport)) lines))

(define (myextract filename) (string-drop-right (read-delimited "" (open-file filename "r")) 1))
(define (mypairing l) (define (inner i ll) (if (null? ll) '() (cons (cons (string-concatenate (list "mypattern" (list-ref 
(list "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b")
i)))(car ll)) (inner (inc i) (cdr ll)))))(inner 0 l))
(define (myformatextract filename) 
  (map (lambda (block) 
					  (if (<= (length (mytokenize "\n" block)) 1) block
		(string-drop-right (string-concatenate (map (lambda (line) (string-concatenate (list line "\\\\\n"))) (mytokenize "\n" block))) 1)
					    ))
				     (mytokenize "\n\n" (myextract filename))))

;(define apo-list 
(define apo-list (myformatextract "apo.tex"))
(define apo-data (mytokenize " " (car apo-list)))
(define apo-list (cdr apo-list))
(define apo-list  (replace apo-list 8 apo-english-text))

(define gosp-list (myformatextract "gosp.tex"))

(display apo-list)
(newline)(display data)(newline)(display (length apo-data))
(exit);FIXME

(replace-in-file "apostol.tex" (string-concatenate (list "apostol_week_" (list-ref apo-list 0) ".tex")) (mypairing
								(map (lambda (i) (if (< i 0) "" (list-ref apo-list i)))
								(list 0 1 4 7 -1 5 8 2 6 9 3))
								))
(replace-in-file "gospel.tex" (string-concatenate (list "gospel_week_" (list-ref gosp-list 0) ".tex")) (mypairing 
								(map (lambda (i) (if (< i 0) "" (list-ref gosp-list i)))
								(list 0 1 4 7 -1 5 8 2 6 9 3))
								))
(open-pipe (string-concatenate (list "pdflatex -interaction batchmode" " apostol_week_" (list-ref apo-list 0) ".tex" " && " 
"pdflatex -interaction batchmode" " gospel_week_" (list-ref gosp-list 0) ".tex")) OPEN_WRITE)
(newline)
