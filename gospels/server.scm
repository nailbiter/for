#!/home/nailbiter/bin/guile -s
!#

;(setlocale LC_ALL "")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (web uri))

(load "../../for/gospels/s3_aux.scm")

(set-port-encoding! (current-output-port) "UTF-8")
(display "Content-Type: text/html; charset=UTF-8\n\n")
(display "<head><meta charset=\"UTF-8\"></head>")

(display "
<form action=\"server.scm\" method=\"get\" name=\"news\">
    <input type=\"text\" id=\"title\" name=\"title\">
  </form>
")
;(display (caar rus2rusurl-table))

(define (parse rus-title)
  (let* (
         (args (parse-russian-title rus-title))
         (eng-title (get-eng-title args))
         (chi-title (get-chi-title args))
         ) (begin(display rus-title )(display "<br>" )(display eng-title )(display "<br>")(display chi-title  )(display "<br>" ))))

((lambda(line)(let*(
                    (index (string-contains line ".  "))
                    (line1 (string-take line index))
                    (line1 (string-append line1 "."))
                    (line2 (substring line (+ index 4)))
                    )(begin(parse line1)(display "<br>")(parse line2)(display "<br>"))))(string-drop(uri-decode  (getenv "QUERY_STRING") )6))

;parse and output: chuck polu`
;TODO: remove buf and s4 --> git update
