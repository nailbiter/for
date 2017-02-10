(setlocale LC_ALL "")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))

(load "s3_aux.scm")

(define (replace-in-file in out l) (define lines (mytokenize "\n" (read-delimited "" (open-file in "r"))))
  (define outport (open-file out "w"))
  (define (subst line keyvals) (if (null? keyvals) line (cond 
  ((string=? (car (car keyvals)) line)(cdr (car keyvals)))
  ((regexp-match? (string-match (caar keyvals) line)) (regexp-substitute #f (string-match (caar keyvals) line) 'pre (cdar keyvals) 'post))
  (else (subst line (cdr keyvals) )))))
  (map (lambda (line)(write-line (subst line l) outport)) lines))

(define (myextract filename) (string-drop-right (read-delimited "" (open-file filename "r")) 1))
(define (mypairing l) (map cons (map (lambda (s) (string-concatenate (list "mypattern" s )))
	(list "0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b" "c" "d" "e" "f")) l))

(define (myformatextract filename)
  (map (lambda (block) 
					  (if (<= (length (mytokenize "\n" block)) 1) block
		(string-drop-right (string-concatenate (map (lambda (line) (string-concatenate (list line "\\\\\n"))) (mytokenize "\n" block))) 1)
					    ))
				     (mytokenize "\n\n" (myextract filename))))
(define flag(make-undefined-variable))
(define (myprocessreading reading) (let* (
					(inner reading)
                    ;(dum(if(variable-bound? flag) ))
                    (inner(replace inner 4(if(variable-bound? flag)(variable-ref flag)((lambda(line)(let*((index (string-contains line ". "))
                                                                                                          (dum(format #t "line: ~a~%" line))
                                                                                                          (dum(format #t "index: ~a~%" index))
                    (line1 (string-take line index))
                    (line1 (string-append line1 "."))
                    (line2 (substring line (+ index 2)))
                    (dum(format #t "~%line2: ~a~%" line2))
                    )(begin(variable-set! flag line2) line1)))(list-ref inner 4)))))
                    (args (parse-russian-title (list-ref inner 4)))
                    (dum(begin(display(list-ref inner 4))(newline)(display args)(newline)(newline)))
					(inner (replace inner 5 (get-eng-title args)))
					(inner (replace inner 6 (get-chi-title args)))
					(inner (replace inner 7 (get-rdg-russian-text args)))
					(inner (replace inner 8 (get-rdg-english-text args)))
					(inner (replace inner 9 (get-rdg-chinese-text args)))
					  )
				     inner
				     ))

(define apo-list (myprocessreading (myformatextract "apo.tex")))
(define gosp-list (myprocessreading (myformatextract "gosp.tex")))
(define separator " ; ")

(define space->underscore(lambda(s)(string-map(lambda (char)(if (char=? char #\space) #\_ char))s)))
(define slash->underscore(lambda(s)(string-map(lambda (char)(if (char=? char #\/) #\_ char))s)))
(define (enclose-in-quote s) (string-append "'" s "'"))
(define (enclose-in-double-quotes s) (string-append "\"" s "\""))

(define date (list-ref gosp-list 13))
(define apostol-filename (string-append "apostol_week_"(space->underscore(list-ref apo-list 0))"_"(slash->underscore date)".tex"))
(define gospel-filename (string-append "gospel_week_"(space->underscore(list-ref gosp-list 0))"_"(slash->underscore date)".tex"))

(define (myselect l) (map (lambda (i) (if (< i 0) "" (list-ref l i)))(list 0 1 4 7 -1 5 8 2 6 9 3 10 11 12)))
(replace-in-file "apostol.tex" apostol-filename (mypairing(myselect apo-list)))
(replace-in-file "gospel.tex" gospel-filename (mypairing(myselect gosp-list)))

(open-pipe (string-append "pdflatex -interaction batchmode " (enclose-in-quote apostol-filename) separator
                                  "pdflatex -interaction batchmode " (enclose-in-quote gospel-filename)) OPEN_WRITE)
(let* ((deffile-filename "deffile.sh")
       (outport (open-file deffile-filename "w"))
       ;(defline (lambda (varname content)(string-append "(define " varname " " (enclose-in-double-quotes content) ")\n")))
       (defline (lambda (varname content)(string-append varname "=" (enclose-in-double-quotes content) )))
       (put-def (lambda (varname content)(write-line (defline varname content)  outport)))
       )(begin(put-def "apostol_filename" apostol-filename)(put-def "gospel_filename" gospel-filename)(put-def "date" date)))
(newline)
;TODO make it "generate" .tex, not substitute into a template
