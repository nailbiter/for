(use-modules (srfi srfi-1))
(use-modules (ice-9 format))

;misc
;;;increment
;;;@arg x -- number to be incremented
(define(inc x)(+ x 1))
;;;decrement
;;;@arg x -- number to be decremented
(define(dec x)(- x 1))
(define(seq a b)(if(>= a b)'()(cons a(seq (+ a 1)b))))
(define(replace l idx elem)
  (if(= idx 0)(cons elem(cdr l))(cons(car l)(replace(cdr l)(- idx 1)elem))))
(define (rational->tex x inline?)
  (cond
    ((integer? x)(format #f "~d" x))
    ((rational? x)(format 
                    #f 
                    (if inline? "~a{~d}/{~d}"  "~a\\frac{~d}{~d}")
                    (if(< x 0)"-" "")
                    (abs(numerator x))
                    (abs(denominator x))))))

;linear algebra
(define (printmat l)
  (begin
    (format #t "\\left(\\begin{array}{")
    (map(lambda(i)(display"c"))(seq 0(length(car l))))
    (display"}")
    (map(lambda(r)(begin
                    (display(car r))
                    (map(lambda(x)(format #t "&~a"(rational->tex x #t)))(cdr r))
                    (display"\\\\")))l)
    (format #t "\\end{array}\\right)\n")))
(define(scalarprod v1 v2)(fold + 0(map * v1 v2)))
(define(multmat A B)
  (map
    (lambda(r)
        (map
          (lambda(i)(scalarprod r(map(lambda(r1)(list-ref r1 i))B)))
          (seq 0(length(car B)))))
    A))
(define (transpose A)
  (map(lambda(i)(map(lambda(r)(list-ref r i))A))(seq 0(length(car A)))))
(define(det2x2 A)
  (let((a(first(first A)))
       (b(second (first A)))
       (c(first(second A)))
       (d(second (second A))))
    (-(* a d)(* b c))))
;possible steps: '(m 0 -1 3)    -- (1) <- -\frac{1}{3} (1)
;                '(s 0 2 -1 3)  -- (1) <- (1) -\frac{1}{3} (3)
(define(applystepmat A step)
  (cond
    ((eq?(car step)'m)
     (replace A
              (second step)
              (map
                (lambda(x)(/(* x(third step))(fourth step)))
                (list-ref A (second step)))))
    ((eq?(car step)'s)
     (replace
       A
       (second step)
       (map 
         +
         (list-ref A(second step))
         (map
           (lambda(x)(* x(/(fourth step)(fifth step))))
           (list-ref A(third step))))))))
(define(printstep step)
  (cond
    ((eq?(car step)'m)
     (format 
       #t 
       "\\xLongrightarrow{\\myassign{(~d)}{~a~a(~d)}}"
       (inc(second step))
       (rational->tex(/(third step)(fourth step)) #f)
       (if(integer?(/(third step)(fourth step)))"\\cdot" "")
       (inc(second step))))
    ((eq?(car step)'s)
     (format
       #t
       "\\xLongrightarrow{\\myassign{(~d)}{(~d)~a~a~a(~d)}}"
       (inc(second step))
       (inc(second step))
       (if(< (/(fourth step)(fifth step))0)"-" "+")
       (rational->tex(abs(/(fourth step)(fifth step))) #f)
       (if(integer?(/(fourth step)(fifth step)))"\\cdot" "")
       (inc(third step))))))
(define(applysteps A steps)
  (begin
    ;(display "&")
    ;(printstep(last steps))
    ;(display "&")
    (printmat(fold(lambda(step Am)(applystepmat Am step))A steps))
    ))
(define (identitymat n)
  (map(lambda(i)(map(lambda(j)(if(= i j)1 0))(seq 0 n)))(seq 0 n)))
(define(avg v)(/(fold + 0 v)(length v)))
(define(mybetahat x y)
  (let*
    ((xbar(avg x))
     (ybar(avg y))
     (sqr(lambda(x)(* x x)))
     (enum(fold 
            + 
            0
            (map
              *
              (map(lambda(xi)(- xi xbar))x)
              (map(lambda(yi)(- yi ybar))y))))
     (denom(fold + 0 (map sqr(map(lambda(xi)(- xi xbar))x)))))
    (/ enum denom)))
(define(myalphahat x y)
  (let*
    ((betahat(mybetahat x y))
     (xbar(avg x))
     (ybar(avg y)))
    (/ (- ybar (* betahat xbar)))))
