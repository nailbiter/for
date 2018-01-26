(use-modules (ice-9 format))

(define(seq a b)(if(>= a b)'()(cons a(seq(+ a 1)b))))
;;generate random times
;;@arg start -- start in format, e.g. "10:00"
;;@arg end -- end in format, e.g. "10:00"
;;@return list of times in same format as start and end
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
    (map minutestotime timelist)))

(display(randtimes "10:00" "21:00" 4))
