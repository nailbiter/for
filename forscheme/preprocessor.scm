(setlocale LC_ALL "")
(use-modules (ice-9 format))
(use-modules (ice-9 eval-string))
(use-modules (srfi srfi-1))
(load "misc.scm")

(define (myfootnote str)(format #f "(display \"\\\\footnote{~a}\")~%" str))
(define (mydefine name val)(format #f "(define ~a \"~a\")" name val))
(define (myescape str)(regexp-substitute/global #f (regexp-quote "\\") str
                          'pre (regexp-quote "\\") 'post))
(define res (mytokenize "\n"
                         (read-delimited "" (open-file (list-ref (program-arguments) 1) "r"))))

(display "(setlocale LC_ALL \"\")\n")
(display "(define(myflush)(map (lambda(line)(format #t \"~a~%\"line))mydata))")
(newline)

((lambda(arg name)
   (if(null? arg)
     (format #t "(define ~a '())~%"name)
     (begin
        (format #t "(define ~a (list~%"name)
        (map(lambda(l)(format #t "\"~a\"~%"l))arg)
        (format #t "))~%")
       )
     ))(cddr(program-arguments))"cmdline")
  (car(fold
  (lambda(line prev)
    (let*
      ((already-done(list-ref prev 0))
      (is-in-tex(list-ref prev 1))
      (is-scm(string=?"%%%"(substring line 0 3)))
      (output
        (if
          is-scm
          (if
            is-in-tex
            (format #t "))~%~a~%" (string-drop line 3))
            (format #t "~a~%" (string-drop line 3)))
          (if
            is-in-tex
            (format #t "\"~a\"~%"(myescape line))
            (format #t "(define ~a (list\"~a\"~%" "mydata"(myescape line))))))
      (list(append already-done(list output))(not is-scm))))
  (list '() #f)
  res))
;;  (let*
;;    ((print-item(lambda(item)(format "\"~a\"~%" item)))
;;     (print-list
;;       (lambda(l)
;;         (if(null? l)
;;           (list "(define cmdline '())")
;;           (append
;;             (list "(define cmdline(list ")
;;             (map print-item l)
;;             (list "))")
;;             )))))
;;    ;(print-list (cddr (program-arguments)))
;;    (list "(define a 'b)")
;;    ))
