(setlocale LC_ALL "")
(include "misc.scm")

(define(factorial n)(if(zero? n)1(* n (factorial(dec n)))))
(define(expo l k)(if(zero? k)1(* l(expo l (dec k)))))
(define (poisson l k)(/(*(expo l k)(exp(- l)))(factorial k)))
(define (sample-mean l)(/(fold + 0 l)(length l)))
(define (sample-var l)(let((m(sample-mean l))) (/(fold + 0(map(lambda(e)(*(- e m)(- e m)))l))(-(length l)1))));s^2

;script
(display((lambda(xi eta)(let*((mxi(sample-mean xi))(meta(sample-mean eta))(n(length xi))(m(length eta))(sxi2(sample-var xi))(seta2(sample-var eta))
                     (s(sqrt(/(+(*(- n 1)sxi2)(*(- m 1)seta2))(+ n m -2)))))(/(abs(- mxi meta))(sqrt(/(+ n m)(* n m)))s)))
         '(36 42 55 59 79 108 41 40 100 58 38 73)'(27 45 84 84 70 99 60 34 117 78 56 88)))(newline)
(display(let*((mxi 2.059)(meta 2.063)(n 10)(m 10)(sxi2 4.4)(seta2 8.6)
                     (s(sqrt(/(+(*(- n 1)sxi2)(*(- m 1)seta2))(+ n m -2)))))(/(abs(- mxi meta))(sqrt(/(+ n m)(* n m)))s)))(newline)
((lambda(l)(display(/(sample-var l)(* 35.63 35.63))))'(151 156 147 153 155 148 160 149 156 161 154 162 163 149 150))(newline)
(display(/ 5.63 14))(newline)
