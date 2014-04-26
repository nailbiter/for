(setlocale LC_ALL "")
(include "misc.scm")

(define(factorial n)(if(zero? n)1(* n (factorial(dec n)))))
(define(expo l k)(if(zero? k)1(* l(expo l (dec k)))))
(define (poisson l k)(/(*(expo l k)(exp(- l)))(factorial k)))
(define (sample-mean l)(/(fold + 0 l)(length l)))
(define (sample-var l)(let((m(sample-mean l))) (/(fold + 0(map(lambda(e)(*(- e m)(- e m)))l))(-(length l)1))));s^2
(define (chi-square n)(list-ref '(
3.841 5.991 7.815 9.488 11.070 12.592 14.067 15.507 16.919 18.307 19.675 21.026
22.362 23.685 24.996 26.296 27.587 28.869 30.144 31.410 32.671 33.924 35.172 36.415 37.652 38.885 40.113 41.337 42.557 43.773
44.985 46.194 47.400 48.602 49.802 50.998 52.192 53.384 54.572 55.758 56.942 58.124 59.304 60.481 61.656 62.830 64.001
65.171 66.339 67.505 68.669 69.832 70.993 72.153 73.311 74.468 75.624 76.778 77.931 79.082 80.232 81.381 82.529 83.675 84.821 85.965 87.108
88.250 89.391 90.531 91.670 92.808 93.945 95.081 96.217 97.351 98.484 99.617 100.749 101.879 103.010 104.139 105.267
106.395 107.522 108.648 109.773 110.898 112.022 113.145 114.268 115.390 116.511 117.632 118.752 119.871 120.990 122.108 123.225 124.342 124.342
)(dec n)))
(define (test-independence mat)(let* ((s(length mat))(k(length(car mat)))
                                  (vis(map(lambda(row)(fold + 0 row))mat))(vjs(fold(lambda(r1 r2)(if(null? r2)r1(map + r1 r2)))'() mat))
                                  (n (fold + 0 vis))(sq(lambda(e)(* e e)))
                                  (e(fold + 0(map(lambda(r vi)(fold + 0(map(lambda(vij vj)(/(sq(- vij(/(* vi vj)n)))(/(* vi vj)n)))r vjs)))mat vis)))
                                  (e(exact->inexact e))
                                  (myand(lambda(a b)(and a b)))
                                  (sanity(fold myand #t (map(lambda(vi)(fold myand #t (map(lambda(vj)(>=(/(* vi vj)n)10))vjs)))vis)))
                                  )
                                 (list sanity e (chi-square (*(dec s)(dec k)))(< e(chi-square (*(dec s)(dec k)))))))
(define(test-uniform l)(let* ((n(fold + 0 l))(s(length l))(myand(lambda(a b)(and a b)))(p (/ 1 s))(sanity (>=(* n p)10))(sq(lambda(e)(* e e)))
                              (e(exact->inexact(fold + 0 (map(lambda(vi)(/(sq(- vi (* n p)))(* n p)))l))))
                              )(list sanity e (chi-square (dec s))(<= e(chi-square (dec s)) ))))

(display (test-independence '((276 3)(473 66))))(newline)
(display(test-uniform '(41 34 54 39 49 45 41 33 37 41 47 39)))(newline)
(exit)

;script
;(display((lambda(xi eta)(let*((mxi(sample-mean xi))(meta(sample-mean eta))(n(length xi))(m(length eta))(sxi2(sample-var xi))(seta2(sample-var eta))
;                     (s(sqrt(/(+(*(- n 1)sxi2)(*(- m 1)seta2))(+ n m -2)))))(/(abs(- mxi meta))(sqrt(/(+ n m)(* n m)))s)))
;         '(36 42 55 59 79 108 41 40 100 58 38 73)'(27 45 84 84 70 99 60 34 117 78 56 88)))(newline)
;(display(let*((mxi 2.059)(meta 2.063)(n 10)(m 10)(sxi2 4.4)(seta2 8.6)
;                     (s(sqrt(/(+(*(- n 1)sxi2)(*(- m 1)seta2))(+ n m -2)))))(/(abs(- mxi meta))(sqrt(/(+ n m)(* n m)))s)))(newline)
;((lambda(l)(display(/(sample-var l)(* 35.63 35.63))))'(151 156 147 153 155 148 160 149 156 161 154 162 163 149 150))(newline)
((lambda(l)(let((npi(/ 1000 12))) (format #t "~f~%" (/(fold + 0 (map(lambda(e)(*(- e npi)(- e npi)))l))npi))))'(77 81 95 86 98 90 73 70 77 82 84 87))
((lambda(l)(let*((lambdahat(/(fold + 0 (map * '(0 1 2 3 4 5 6 7)l))500))
                 (n 500)
                 (ps(map(lambda(e)(poisson lambdahat e))'(0 1 2 3)))
                 (ps(append ps (list (- 1(fold + 0 ps)))))
             ;(format #t "~f~%" (* 500 (- 1 (fold + 0 (map(lambda(e)(poisson lambdahat e))'(0 1 2 3))))))
             ;(display (map (lambda(e)(format "~,2f~%" (* 1 e)))ps))
             )(format #t "~,2f~%"(fold + 0 (map(lambda(nu npi)(/(*(- nu npi)(- nu npi))npi))'(199 169 87 31 14)(map(lambda(e)(* n e))ps))))
             )) '(199 169 87 31 9 3 1 1))
