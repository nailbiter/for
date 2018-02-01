(use-modules (ice-9 format))
(use-modules (srfi srfi-1))

(define(seq a b)(if(>= a b)'()(cons a(seq(+ a 1)b))))
;;;generate random times
;;;@arg start -- start in format, e.g. "10:00"
;;;@arg end -- end in format, e.g. "10:00"
;;;@return list of times in format say, 10:10 -> '(10 10)
(define (randtimes start end count)
  (let*
    ((inc(lambda(x)(+ x 1)))
     (dum(set! *random-state* (random-state-from-platform)))
     (startminS (substring start(inc(string-index start #\:))))
     (starthourS (substring start 0(string-index start #\:)))
     (startmin(+(string->number startminS)(* 60(string->number starthourS))))
     (endminS (substring end(inc(string-index end #\:))))
     (endhourS (substring end 0(string-index end #\:)))
     (endmin(+(string->number endminS)(* 60(string->number endhourS))))
     (step(quotient(- endmin startmin)count))
     (timelist
       (map
         (lambda(s e)(+ s(random(- e s))))
         (map(lambda(i)(+ startmin(* i step)))(seq 0 count))
         (map(lambda(i)(+ startmin(* i step)))(seq 1(inc count)))))
     (minutestotime
       (lambda(minutes)(format #f "~2,'0d:~2,'0d"(quotient minutes 60)(remainder minutes 60)))))
    (map (lambda(t)(list(quotient t 60)(remainder t 60))) timelist)))

(map
  (lambda(l)
    (format 
      #t
      "{\"name\":\"make 5 flashcards\",\"cronline\":\"~a ~a * * *\",\"delaymin\":1080,\"enabled\":true},~%"
      (second l)
      (first l)))
  (randtimes "11:00" "19:00" 3))
(map
  (lambda(l)
    (format 
      #t
      "{\"name\":\"practice 5 flashcards\",\"cronline\":\"~a ~a * * *\",\"delaymin\":1080,\"enabled\":true},~%"
      (second l)
      (first l)))
  (randtimes "11:00" "19:00" 4))
(display(randtimes "9:00" "21:00" 1))
