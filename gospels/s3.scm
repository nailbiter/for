(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))

(include "s3_aux.scm")

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

(define apo-list (let* (
                        (inner (myformatextract "apo.tex"))
                        (readings-list (parse-russian-title (list-ref inner 4)))
                        (name (list-ref readings-list 0))
                        (chapter (list-ref readings-list 1))
                        (verse-start (list-ref readings-list 2))
                        (verse-end (list-ref readings-list 3))
                        (inner (replace inner 8 (get-rdg-english-text name chapter verse-start verse-end )))
                        (inner (replace inner 5 (get-eng-title name chapter verse-start verse-end)))
                        (inner (replace inner 6 (get-chi-title name chapter verse-start verse-end)))
                        ) 
                   inner
                   ))
(define gosp-list (let* (
                        (inner (myformatextract "gosp.tex"))
                        (readings-list (parse-russian-title (list-ref inner 4)))
                        (name (list-ref readings-list 0))
                        (chapter (list-ref readings-list 1))
                        (verse-start (list-ref readings-list 2))
                        (verse-end (list-ref readings-list 3))
                        (inner (replace inner 8 (get-rdg-english-text name chapter verse-start verse-end )))
                        (inner (replace inner 5 (get-eng-title name chapter verse-start verse-end)))
                        (inner (replace inner 6 (get-chi-title name chapter verse-start verse-end)))
                        ) 
                   inner
                   ))

(display (list-ref apo-list 8))(newline)
(display (list-ref apo-list 5))(newline)
(display (list-ref apo-list 6))(newline)
(newline)
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
