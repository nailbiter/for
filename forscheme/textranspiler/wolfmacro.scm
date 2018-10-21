(use-modules (ice-9 regex))
(use-modules (srfi srfi-1))
(use-modules (ice-9 format))
(load "aux.scm")

(define wolftable-extended
  (commands '("commands/commands.txt" "commands/commands2.txt")))
(define (mytex->wolf lines)
  (let*
    ((mlines(filter (lambda(l)(eq?(string-match "^%%"l)#f))lines))
     (token-pattern "^\\\\[a-zA-Z:]*")
     (raw(string-join mlines))
     (raw(string-delete raw char-set:whitespace))
     (raw(string-delete raw #\.))
     (raw->toks
       (letrec
         ((parse
           (lambda(toks tail)
             (cond
               ((string-null? tail)toks)
               ((not(eq? #f (string-match token-pattern tail)))
                (let*
                  ((m(string-match token-pattern tail)))
                  (parse
                    (append 
                      toks
                      (list(string->symbol(string-drop
                                              (match:substring m)
                                              1))))
                    (string-drop tail(match:end m)))))
               ((char=? #\{ (string-ref tail 0))
                (let*
                  ((find-matching-clo-brace
                     (letrec
                       ((fmcb(lambda(state) ; = (count idx)
                               (cond
                               ((zero?(first state))(second state)) 
                               ((char=?(string-ref tail (second state))#\{)
                                (fmcb(map + state '(1 1))))
                               ((char=?(string-ref tail (second state))#\})
                                (fmcb(map + state '(-1 1))))
                               (#t(fmcb(map + state '(0 1))))))))
                       fmcb))
                  (idx(find-matching-clo-brace '(1 1))))
                  ;(dum(format #t "find-matching-clo-brace -> ~a~%"idx))
                  (parse
                    (append toks(list(parse '() (substring tail 1(- idx 1)))))
                    (string-drop tail idx))))
               (#t(let*
                       ((idx(string-index tail(lambda(c)
                                                (or(char=? c #\\)
                                                  (char=? c #\{)))))
                        (idx(if(eq? idx #f)(string-length tail)idx)))
                        (parse
                          (append toks(list(string-take tail idx)))
                          (string-drop tail idx))))))));)
         parse)))
    (raw->toks '() raw)))
(define (printlist l)
  (letrec
    ((pl
       (lambda(pfx l)
         (cond
           ((null? l)'())
           ((list?(car l))
            (begin
              (pl (string-append pfx "^^^")(car l))
              (pl pfx(cdr l))))
           (#t
            (begin
              (format #t "~a~a~%" pfx(car l))
              (pl pfx (cdr l))))))))
    (pl "" l)))
(define (printwolf buf l)
  (cond
    ((null? l)buf)
    ((string?(car l))(printwolf(string-append buf (car l))(cdr l)))
    ((list?(car l))(printwolf(string-append buf (printwolf ""(car l)))(cdr l)))
    ((symbol?(car l))
     (let*
       ((elem(find(lambda(e)(eq?(car l)(first e)))wolftable-extended))
        (dum(if(eq? elem #f)(throw 'elem (car l))))
        (arity(second elem))
        (lr list-ref)
        (magicword "n1K7OvrVDJ")
        (wolfproc
          (if(string=?(fourth elem)magicword)
            (fifth elem)
            (lambda(l)
                (format #f"~?"(fourth elem)(map(lambda(i)(lr l i))(fifth elem))))))
        (args(list-head(cdr l)arity))
        (newbuf(string-append buf
                              (wolfproc(map(lambda(a)(printwolf "" a))args)))))
       (printwolf newbuf(list-tail l(+ 1 arity)))))))
(define(myassign var)(format #t "~a:=~a;~%" var(printwolf ""(mytex->wolf mydata))))
