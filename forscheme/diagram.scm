(use-modules (ice-9 format))
(use-modules (ice-9 eval-string))
(use-modules (srfi srfi-1))
(load "../../forscheme/misc.scm")
;;\newcommand{\wid}{4}
;;\newcommand{\pad}{0.25}
;;\newcommand{\rectWithTitleAbove}[5]{
;;	\node at (#2+0.5*#4,#3) {#1};
;;	\draw (#2,#3-0.25) rectangle (#2+#4,#3-#5);
;;}
;;\newcommand{\rectWithTitleInside}[5]{
;;	\node at (#2+1,#3) {#1};
;;	\draw (#2,#3+0.20) rectangle (#2+#4,#3-0.3);
;;}

;;global vars
(define pad 0.25)
(define Wid 4)
(define Rectangle-Hash-Table (make-hash-table 10))

;;misc
(define (drawpoint l)(format #f "(~f,~f)"(list-ref l 0)(list-ref l 1)))
(define (average pt1 pt2) (map(lambda(x)(/ x 2))(map + pt1 pt2)))

;;drawing
(define (drawRect l color)(format #t "\\draw[color=~a] (~f,~f) rectangle (~f,~f);~%" color(list-ref l 0) (list-ref l 1) (+ (list-ref l 0) (list-ref l 2)) (- (list-ref l 1) (list-ref l 3))))
(define(putLabel text x y color)(format #t "\\node at (~f,~f) {\\color{~a}{~a}};~%" x y color  text))
(define (circ:draw-low-level circ color style text)
  (begin
         (if(eq? style 'f)
           (format #t "\\fill[color=~a] (~f,~f) circle(~f);~%" color (car circ) (cadr circ) (caddr circ))
           (format #t "\\filldraw[color=~a,pattern color=~a,pattern=~a] (~f,~f) circle(~f);~%" color color style (car circ) (cadr circ) (caddr circ)))
         (format #t "\\node at ~a {~a};~%" (drawpoint (map + (list-head circ 2) (list (+ 0.35 (list-ref circ 2)) 0))) text)
         ))

;;rectangle generation
(define (rectWithTitleAbove:rect x y wid heig)
  (list x (- y 0.25) wid heig))
(define (rectWithTitleInside:rect x y wid)
  (list x (- y 0) wid 0.5))
(define (circ:make x y r)(list x y r))

;;rectangle info query
(define (rect:get-x label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))0))
(define (rect:get-w label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))2))
(define (rect:get-y label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))1))
(define (rect:get-h label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))3))
(define (circ:get-x label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))0))
(define (circ:get-y label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))1))
(define (circ:get-r label)(list-ref (cadr(hashq-ref Rectangle-Hash-Table label))2))

;;arrows
(define (arrow:angle text pt1 pt2 color)
  (begin(format #t "\\draw[->,>=angle 90,color=~a] ~a -- node {~a} ~a ;~%" color (drawpoint pt1)  text(drawpoint pt2))))
(define (arrow text pt1 pt2)
  (begin(format #t "\\draw[-open triangle 90] ~a to node {~a} ~a;~%" (drawpoint pt1) text (drawpoint pt2))))
(define (arrowRectToRect text r1 r2)(let 
                                      ((x1 (list-ref r1 0))
                                      (y1 (list-ref r1 1))
                                      (w1 (list-ref r1 2))
                                      (h1 (list-ref r1 3))
                                      (x2 (list-ref r2 0))
                                      (y2 (list-ref r2 1))
                                      (w2 (list-ref r2 2))
                                      (h2 (list-ref r2 3)))
                                      (arrow text 
                                             (average(list (+ x1 w1)y1)(list (+ x1 w1)(- y1 h1)))
                                             (average(list (+ x2 0)y2)(list (+ x2 0)(- y2 h2)))
                                      )))
(define (arrow:rect-to-rect-horiz l1 o1 l2 o2 text . color)
  (let*((p1 (map + (list (rect:get-x l1)(rect:get-y l1))(list 0 (* -1 (rect:get-h l1)))(list (* o1 (rect:get-w l1))0)  ))
        (p2 (map + (list (rect:get-x l2)(rect:get-y l2))(list (* o2 (rect:get-w l2))0)  ))
        (colorline(if(null? color)"black"(car color)))
  )(arrow:angle text p1 p2 colorline)))
(define (arrow:rect-to-circ l1 o1 l2 o2 text . color)
  (let*((p1 (map + (list (rect:get-x l1)(rect:get-y l1))(list 0 (* -1 (rect:get-h l1)))(list (* o1 (rect:get-w l1))0)  ))
        (p2 (map + (list (circ:get-x l2)(circ:get-y l2))(map (lambda(x)(* x (circ:get-r l2))) (list (cos (* PI o2))(sin (* PI o2))))))
        (colorline(if(null? color)"black"(car color)))
  )(arrow:angle text p1 p2 colorline)))
(define (arrow:rect-to-circ/center-to-center l1 o1 l2 o2 text . color)
  (let*((p1 (map + (list (rect:get-x l1)(rect:get-y l1))(list 0 (* -1 (rect:get-h l1)))(list (* o1 (rect:get-w l1))0)  ))
        (blend(lambda(p1 p2 const)(map(lambda(x1 x2)(+(* (- 1 const) x1)(* x2 const)))p1 p2)))
        (p2(list (circ:get-x l2)(circ:get-y l2)))
        (dist(sqrt(apply + (map(lambda(x)(* x x))(map - p1 p2)))))
        (p2(blend p2 p1 (/(circ:get-r l2)dist)))
        (colorline(if(null? color)"black"(car color)))
  )(arrow:angle text p1 p2 colorline)))
(define (arrow:circ-to-circ l1 o1 l2 o2 text . color)
  (let*((p1 (map + (list (circ:get-x l1)(circ:get-y l1))(map (lambda(x)(* x (circ:get-r l1))) (list (cos (* PI o1))(sin (* PI o1))))))
        (p2 (map + (list (circ:get-x l2)(circ:get-y l2))(map (lambda(x)(* x (circ:get-r l2))) (list (cos (* PI o2))(sin (* PI o2))))))
        (colorline(if(null? color)"black"(car color)))
  )(arrow:angle text p1 p2 colorline)))
(define (arrow:circ-to-circ/center-to-center l1 o1 l2 o2 text . color)
  (let*((p1(list (circ:get-x l1)(circ:get-y l1)))
        (p2(list (circ:get-x l2)(circ:get-y l2)))
        (r1(circ:get-r l1))
        (r2(circ:get-r l2))
        (blend(lambda(p1 p2 const)(map(lambda(x1 x2)(+(* (- 1 const) x1)(* x2 const)))p1 p2)))
        (dist(sqrt(apply + (map(lambda(x)(* x x))(map - p1 p2)))))
        (p1 (blend p1 p2 (/ r1 dist)))
        (p2 (blend p2 p1 (/ r2 dist)))
        (colorline(if(null? color)"black"(car color)))
  )(arrow:angle text p1 p2 colorline)))

;;high-level
(define (rectWithTitleAbove text x y wid heig . opt)
  (begin(drawRect (rectWithTitleAbove:rect x y wid heig)) 
    (putLabel text (+ x (/ wid 2)) y)
    ))
(define (rectWithTitleInside text x y wid opt)
  (let* ((rect (rectWithTitleInside:rect x y wid))
         (get-arg(lambda(key def)((lambda(item)(if(eq? item #f)def(cadr item)))(query-list (lambda(item)(eq?(car item)key))opt))))
         (colorline(get-arg 'color "black"))
         (label(get-arg 'l '()))
  )(begin
    (if(not(null? label))(hashq-set! Rectangle-Hash-Table label (list 'rect rect)))
    (drawRect rect colorline)
    (putLabel text (+ x (/ wid 2)) (- y pad) colorline))))
(define (circ:draw x y r text opt)
  (let* ((circ (circ:make x y r))
         (get-arg(lambda(key def)((lambda(item)(if(eq? item #f)def(cadr item)))(query-list (lambda(item)(eq?(car item)key))opt))))
         (colorline(get-arg 'color "black"))
         (label(get-arg 'l '()))
         (style(get-arg 's '()))
  )(begin
    (if(not(null? label))(hashq-set! Rectangle-Hash-Table label (list 'circ circ)))
    (circ:draw-low-level circ colorline style text))))

;;main
(define (intdepdiag dum)
  (let*((y-offset(make-variable 0))
        (x-offset(make-variable 0))
        (get-x(lambda()(variable-ref x-offset)))
        (get-y(lambda()(variable-ref y-offset)))
        (inc-x (lambda(offset)(begin(inc-var x-offset offset)offset)))
        (inc-y (lambda()(begin(inc-var y-offset -2)(variable-set! x-offset 0))))
        (myrect(lambda (title wid . opt)(rectWithTitleInside title (get-x)(get-y)(inc-x wid)opt)))
        (param-text (lambda(num)(format #f "\\color{blue}{~a}" num)))
        (mycirc(lambda (r text . opt)(circ:draw (get-x)(get-y)(inc-x r) (param-text text) opt)))
    )(begin 
      (myrect "Warnaar'10: \\color{blue}{4}"
              2 '(l war))(inc-x 0.7)(myrect  "K-L: \\color{blue}{4}" 1 '(color "red")'(l kl))(inc-x 2)(myrect  "Tarasov-Varchenko'03: \\color{blue}{3}"
              3.2 '(l tv))(inc-x 0.2)(myrect  "Dotsenko-Fateev'85: \\color{blue}{4}" 3 '(l df))(inc-y)
      ((lambda(w)(begin(inc-x (+(rect:get-x 'kl)(/(rect:get-w 'kl)2)(* -0.5 w)))(myrect "Proposition 7: \\color{blue}{3}" w '(l prop)'(color "red"))))2)(inc-x 0.8)(myrect "Selberg'44: \\color{blue}{3}"
                                                                                                                                                                        1.7 '(l s))(inc-y)
      ((lambda(w)(begin(inc-x (+(rect:get-x 'kl)(/(rect:get-w 'kl)2)))(mycirc w 3 '(color "red") '(s "north east lines")'(l pp))))0.3)(inc-y)
        (inc-x (-(rect:get-w 'war) .5))(mycirc  0.1 2 '(s f)'(l warp))(variable-set! x-offset (+(rect:get-x 'kl)(/(rect:get-w 'kl)2)))(mycirc 0.1 2 '(s f)'(l sp))
        (variable-set! x-offset (+(rect:get-x 's)(/(rect:get-w 's)2)))(mycirc 0.1 2 '(s f)'(l dp))
        (variable-set! x-offset (+(rect:get-x 'tv)(/(rect:get-w 'tv)1)))(mycirc 0.1 2 '(s f)'(l tp))
        ;;arrows TODO
        (arrow:rect-to-rect-horiz 'war 1.0 's 0.0 "")
        (arrow:rect-to-rect-horiz 'kl 0.5 'prop 0.5 "" "red")
        (arrow:rect-to-rect-horiz 'tv 0.15 's 0.5 "" )
        (arrow:rect-to-rect-horiz 'df 0 's 0.95 "")
        (arrow:rect-to-circ/center-to-center 'prop 0.5 'pp 0.5 "\\color{black}{$\\kern1.5cm\\ell=m=0$}" "red")
        (arrow:rect-to-circ/center-to-center 'war 0.5 'warp .5 "" "black")
        (arrow:circ-to-circ/center-to-center 'pp -5/8 'warp .5 "" "black")
        (arrow:circ-to-circ/center-to-center 'pp -1/2 'sp .5 "" "black")
        (arrow:circ-to-circ/center-to-center 'pp -1/8 'dp .5 "" "black")
        (arrow:circ-to-circ/center-to-center 'pp 0 'tp .5 "" "black")
        (arrow:rect-to-circ/center-to-center 's 0.2 'sp .5 "" "black")
        (arrow:rect-to-circ/center-to-center 'df 0.4 'dp .5 "" "black")
        (arrow:rect-to-circ/center-to-center 'tv 0.6 'tp .5 "" "black")
        )))

(define(symbreakdiag dum)
(begin
(rectWithTitleAbove "$I(\\lambda)$" -9 1 Wid 6.8)
    (rectWithTitleAbove "$K$-type (0,0)" (+ -9 pad) (- 1 (* 2 pad)) (- Wid (* 2 pad)) 1.5)
        (rectWithTitleInside "$K'$-type $(0,0)$" (+ -9 pad pad) (- 1 pad pad pad pad)(- Wid pad pad pad pad))
    (rectWithTitleAbove "$K$-type (2,0)" (+ -9 pad) (- -0.75 (* 3 pad)) (- Wid (* 2 pad)) 2.0)
        (rectWithTitleInside "$K'$-type $(0,0)$" (+ -9 pad pad) (- -0.75 (* 4.3 pad))(- Wid pad pad pad pad))
        (rectWithTitleInside "$K'$-type $(1,0)$" (+ -9 pad pad) (- -0.75 (* 6.6 pad))(- Wid pad pad pad pad))
        (rectWithTitleInside "$K'$-type $(2,0)$" (+ -9 pad pad) (- -0.75 (* 8.9 pad))(- Wid pad pad pad pad))
    (putLabel "\\Huge \\dots" -7.25 -4)
    (rectWithTitleAbove "$K$-type (m,n)" (+ -9 pad) (- -3.75 (* 2 pad)) (- Wid (* 2 pad)) 1.5)
        (putLabel "\\Huge \\dots" -7.25 -4.7)
        (rectWithTitleInside "$K'$-type $(m',n)$" (+ -9 pad pad) (- -4.6 pad)(- Wid pad pad pad pad))
        (rectWithTitleInside "$K'$-type $(m'',n')$" (+ -9 pad pad) (- -4.6 (* 3.5 pad))(- Wid pad pad pad pad))
(rectWithTitleAbove "$J(\\nu)$" -2 1 Wid 6.8)
    (rectWithTitleAbove "$K'$-type (0,0)" (+ -2 pad) (- 1 (* 2 pad)) (- Wid (* 2 pad)) 1.5)
    (putLabel "\\Huge \\dots" -0.25 -3)
    (rectWithTitleAbove "$K'$-type (m',n)" (+ -2 pad) (- -3.75 (* 2 pad)) (- Wid (* 2 pad)) 1.5)
(arrowRectToRect "$R_{\\lambda,\\nu}^X$"(rectWithTitleAbove:rect -9 1 Wid 6.8)(rectWithTitleAbove:rect -2 1 Wid 6.8))
(arrowRectToRect 
  "$c^{p,q}_{0,0,0}I$"
  (rectWithTitleInside:rect(+ -9 pad pad) (- 1 pad pad pad pad)(- Wid pad pad pad pad))
    (rectWithTitleAbove:rect (+ -2 pad) (- 1 (* 2 pad)) (- Wid (* 2 pad)) 1.5))
(arrowRectToRect 
  "$c^{p,q}_{0,2,0}I$"
    (rectWithTitleInside:rect (+ -9 pad pad) (- -0.75 (* 4.3 pad))(- Wid pad pad pad pad))
    (rectWithTitleAbove:rect (+ -2 pad) (- 1 (* 2 pad)) (- Wid (* 2 pad)) 1.5))
(arrowRectToRect 
  "$c^{p,q}_{m',m,n}I$"
    (rectWithTitleInside:rect  (+ -9 pad pad) (- -4.6 pad)(- Wid pad pad pad pad))
    (rectWithTitleAbove:rect (+ -2 pad) (- -3.75 (* 2 pad)) (- Wid (* 2 pad)) 1.5))))

;;	(display "\\draw (-9,1) rectangle (-9+\\wid,-5);
;;		\\rectWithTitleAbove{$K$-type $(0,0)$}{-9+\\pad}{1-\\pad}{\\wid-2*\\pad}{1.5}
;;		\\rectWithTitleAbove{$K$-type $(0,2)$}{-9+\\pad}{-0.75-\\pad}{\\wid-2*\\pad}{1.5}
;;		\\node at (-7.25,-3) {\\Huge\\dots};
;;		\\rectWithTitleAbove{$K$-type $(m,n')$}{-9+\\pad}{-3-\\pad}{\\wid-2*\\pad}{1.5}
;;	\\node at (-7,1.5) {$I(\\lambda)\\mid_{K}$};
;;			\\rectWithTitleInside{$K'$-type $(0,0)$}{-9+\\pad+\\pad}{1-4*\\pad}{\\wid-4*\\pad}
;;	\\rectWithTitleInside{$K'$-type $(0,0)$}{-9+\\pad+\\pad}{-0.75-4*\\pad}{\\wid-4*\\pad}
;;
;;	\\draw (-2.0,1) rectangle (-2+\\wid,-5);
;;	\\node at (0,1.5) {$J(\\nu)\\mid_{K'}$};")
