(setlocale LC_ALL "")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))

(load "s3_aux.scm")

(define (parse rus-title)
  (let* (
         (args (parse-russian-title rus-title))
         (eng-title (get-eng-title args))
         (chi-title (get-chi-title args))
         ) (begin(display rus-title)(newline)(display eng-title)(newline)(display chi-title)(newline))))

(define (loop)(let*(
                    (line (read-line))
                    (index (string-contains line ". "))
                    (line1 (string-take line index))
                    (line1 (string-append line1 "."))
                    (line2 (substring line (+ index 4)))
                    )(if (eof-object? line) '() (begin(parse line1)(parse line2)(loop)))));(begin(parse line)(loop)))))

(loop)
