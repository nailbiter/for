(setlocale LC_ALL "")
(include "misc.scm")

;cmd-line --> cluster --> extract time --> subtract'n'sort --> output
(define (fcn fn)
  (let* ((lines (mytokenize "\n" (read-string (open-file fn "r"))))
         (tester? (lambda(l)(=(string-length l)0)))
         (split (letrec((s(lambda(acum l)(if(null? l)'()(if
                                                          (tester?(car l))
                                                          (if(null? acum)(s '() (cdr l))(cons acum(s '()(cdr l))))
                                                          (s(append acum(list-head l 1))(cdr l)))))))
                  (s '()lines)))
    (list-head lines 5)))

(map (lambda(e)(format #t "~a***~&" e)) (fold append '() (map fcn (cdr (command-line)))))
