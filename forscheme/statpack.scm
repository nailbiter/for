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
(define (student-t/alpha=0.025 n)(list-ref '(12.71 4.303 3.182 2.776 2.571 2.447 2.365 2.306 2.262 2.228 2.201 2.179 2.160 2.145
2.131 2.120 2.110 2.101 2.093 2.086 2.080 2.074 2.069 2.064 2.060 2.056 2.052 2.048 2.045 2.042)(dec n)))
(define (kolmogorov-epsilon n)(list-ref '(
 0.9750 0.8419 0.7076 0.6239 0.5633 0.5193 0.4834 0.4543 0.4300 0.4093 0.3912 0.3754 0.3614 0.3489 0.3376 'nan 'nan 'nan 'nan 0.2941
)(dec n)))
(define (sign-criterion/alpha=0.025 n)(list-ref '(
  'nan 'nan 'nan 'nan 5 5 6 7 7 8 9 9 10 11 11 12 12 13 14 14 15 16 16 17
)(dec n)))

(define (test-normal-mean/two-sided=0.05 l a)(let*((n(length l))(xibar(/(fold + 0 l)n))(s(sqrt(/(fold + 0(map(lambda(xi)(*(- xi xibar)(- xi xibar)))
l))(dec n))))(res(/(abs(- xibar a))(/ s(sqrt n)))))(list res (student-t/alpha=0.025 (dec n)) (<= res (student-t/alpha=0.025 (dec n))))))
(define (test-normal-2-mean/two-sided=0.05 l1 l2 a)
(let*((n(length l1))(m(length l2))(xi1(/(fold + 0 l1)n))(xi2(/(fold + 0 l2)m))(S1(/(fold + 0(map(lambda(xi)(*(- xi xi1)(- xi xi1)))l1))(dec n)))
 (S2(/(fold + 0(map(lambda(xi)(*(- xi xi2)(- xi xi2)))l2))(dec m)))(s(sqrt(/(+(*(dec n)S1)(*(dec m)S2))(+ n m -2))))
(res (/(/(abs(- xi1 xi2 a))s)(sqrt(/(+ n m)(* n m))))))(list res (student-t/alpha=0.025 (+ n m -2)) (<= res (student-t/alpha=0.025 (dec n))))))

(define(test-distribution nu p n)(let*((r(length nu))(res(fold + 0(map(lambda(nui pi)(/(*(- nui(* n pi))(- nui(* n pi)))(* n pi)))nu p)))
)(list res (chi-square (dec r))(< res (chi-square(dec r))) )))
(define (test-independence mat)(let* ((s(length mat))(k(length(car mat)))
                                 (vis(map(lambda(row)(fold + 0 row))mat))(vjs(fold(lambda(r1 r2)(if(null? r2)r1(map + r1 r2)))'() mat))
                                 (n (fold + 0 vis))(sq(lambda(e)(* e e)))
                                 (e(fold + 0(map(lambda(r vi)(fold + 0(map(lambda(vij vj)(/(sq(- vij(/(* vi vj)n)))(/(* vi vj)n)))r vjs)))mat vis)))
                                 (e(exact->inexact e))
                                 (myand(lambda(a b)(and a b)))
                                 (sanity(fold min 100500(map(lambda(vi)(fold min 100500(map(lambda(vj)(/(* vi vj)n))vjs)))vis)))
                                 )
                                 (list (list sanity 10 (>= sanity 10)) e (chi-square (*(dec s)(dec k)))(< e(chi-square (*(dec s)(dec k)))))))

(define(test-uniform l)(let* ((n(fold + 0 l))(s(length l))(myand(lambda(a b)(and a b)))(p (/ 1 s))(sanity (>=(* n p)10))(sq(lambda(e)(* e e)))
                              (e(exact->inexact(fold + 0 (map(lambda(vi)(/(sq(- vi (* n p)))(* n p)))l))))
                              )(list sanity e (chi-square (dec s))(<= e(chi-square (dec s)) ))))
(define(test-uniform-0-1/kolmogorov l)
  (let* ((len(length l))(getsup (lambda(a b c)(max (abs (- a c))(abs (- b c))))) ;F(a)=P(X<a)
         (intervals((lambda(s)(map (lambda(a b i) (list a b (/ i len)))(append '(0) s)(append s '(1))(seq 0 (inc len))))(sort l <)))
         (myand(lambda(a b)(and a b)))
         (e(fold max 0 (map (lambda(x)(getsup(car x)(cadr x)(caddr x)))  intervals)))
         )(list e (kolmogorov-epsilon  len)(< e(kolmogorov-epsilon  len) ))))
(define(sign-criterion/discrete/one-sided l1 l2);l2 should be better than l1
  (let* ((diffs(map - l2 l1))(nonzero (length(filter (lambda(x)(not(zero? x))) diffs)))(positive(length(filter positive? diffs)))
          )(list nonzero positive (sign-criterion/alpha=0.025 nonzero)(<= positive (sign-criterion/alpha=0.025 nonzero)))))
(define(sign-criterion/discrete/two-sided l1 l2);l2 should be better than l1
  (let* ((diffs(map - l2 l1))(nonzero (length(filter (lambda(x)(not(zero? x))) diffs)))(positive(length(filter positive? diffs)))
         (b (sign-criterion/alpha=0.025 nonzero))(a(- nonzero b))
          )(list nonzero positive a b(<= a positive b))))

;script
(display (test-independence(list (map + '(33 41 39 17)'(48 100 58 13))'(113 202 70 22)'(209 255 61 10)
                                   (map + '(194 138 33 10)'(39 15 4 1)))))
(exit)
;script
(display(map(lambda(n)(* 1(poisson 2.93 n)))(seq 0 7)))(newline)
(display(test-distribution '(5 19 26 26 21 13 8) '(0.053 0.156 0.229 0.223 0.163 0.096 0.04)(+ 5 19 26 26 21 13 8)))
(exit)
;script
(define SS ((lambda(l1 l2) (/(sample-var l1)(sample-var l2)))'(40 45 195 65 145) '(110 55 120 50 80)))
(format #t "~f~%" SS)
(newline)(exit)
;script
(display (test-independence '((276 3)(473 66))))(newline)
(display(test-uniform '(41 34 54 39 49 45 41 33 37 41 47 39)))(newline)
(define bones (fold (lambda(e prev)(let((num(random 6)))(append (list-head prev num)
                                                           (list (inc (list-ref prev num)))
                                                           (list-tail prev (inc num))
                                                           ))) '(0 0 0 0 0 0)(seq 0 1000)))
(display bones)(newline)
(display (test-uniform bones))(newline)
(display(test-uniform-0-1/kolmogorov (map(lambda(x)(exact->inexact(/ x 100000)))'(45355 30080 53251 75152 69399
                                                                  79631 51355 73698 40009 83688
                                                                  42450 32577 66666 05724 61293
                                                                  40603 08037 14447 50199 47598))))(newline)
(display(sign-criterion/discrete/one-sided '(57 59 41 51 43 49 48 56 44 50 44 50 70 42 68 54 38 48)
                                           '(51 56 44 44 50 54 50 40 50 50 56 46 74 57 74 48 48 44)))
(newline)
(display(sign-criterion/discrete/two-sided '(-1 -5 1 10 2 -3 6 10 -1 4 -8 -1 -10 -9 -2 -2 -8 1 2 5 )
                                           '(10 8 9 12 0 8 5 9 -1 -1 7 16 -5 1 10 9 -5 6 6 15)))
(newline)
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
