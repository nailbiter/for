(setlocale LC_ALL "")
(include "misc.scm")

(define start-num (string->number (cadr (command-line))))
(define (line-pref num)(string-append (number->string num)": "))
(define (dot-replacer m s count) 
  (cons 
    (string-append (match:prefix m)(match:substring m)"<br>\n"(line-pref (inc count))(match:suffix m))
    (match:end m)));-->(string . pos); FIXME: match:end invalid for modified string
(let* ((text (read-delimited "" ))
       (pre (line-pref start-num))
       (post "")
       (M(letrec
           ((iM(lambda(s p f set c)
                 (let((m(string-match p s set)))(if(regexp-match? m)(let((r(dot-replacer m s c)))(iM(car r)p f(cdr r)(inc c)))s)))))
           iM))
       (dum(display pre))
       (text(regexp-substitute/global #f "\n" text 'pre 'post))
       (text (M text "。" dot-replacer 0 start-num))
       (dum(display text))
       (dum(display post)))
  '())
