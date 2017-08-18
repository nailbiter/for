;guile -e diag1 $< > $@
(use-modules (srfi srfi-1))
(use-modules (srfi srfi-13))
(use-modules (ice-9 format))


;;global vars
(define myhash (make-hash-table))

;;memoized
(define (do-memoized hash arg fallback)(let((val(hash-ref hash arg)))(if(eq? val #f)(let((res(fallback arg)))(begin(hash-set! hash arg res)res))val)))

;;costants -- data = ((...) style-line legend-item)
;;                    (...) = ("||") or
;;                    (...) = ("||" "\\" criterion)
;;                  style-line = "dotted"/""/"dashed" or "triangle"/"circle"/"square"
;;(define data-global (list '(3 5) '(-10 10 -10 10) 4 2
;;               '((ss) dotted "$supp=\\{0\\}$")
;;               '((mm) dashed "$supp=C$")
;;               '((bb) solid "$supp=Y$")
;;               '((ss mmm ()) circ "$supp=\\emptyset$")
;;               '((bb mm ((nss))) tri "$supp=C\\cap Y$")
;;               ))
(define data-global (list '(2 3) '(-5 5 -5 5) -1 0.6
               '((ss) dotted "$\\{[o]\\}$")
               '((mm) dashed "$C$")
               '((bb) solid "$Y$")
               '((ss mmm ()) circ "$\\emptyset$")
               '((bb mm ((nss))) tri "$C\\cap Y$")
               ))
;utils -- geometry
;pt = (nu lambda)
;line = (a b c) = "a*nu + b*lambda = c"
(define (dec x)(- x 1))
(define (det l)(let((a(list-ref l 0))(b(list-ref l 1))(c(list-ref l 2))(d(list-ref l 3)))(-(* a d)(* b c))))
(define (invert-2-by-2 l)(let((a(list-ref l 0))(b(list-ref l 1))(c(list-ref l 2))(d(list-ref l 3)))(if(=(det l)0)'()(map (lambda(x)(/ x (det l)))(list d (- 0 b) (- 0 c) a)))))
(define (drawpoint l)(format #f "(~f,~f)"(list-ref l 0)(list-ref l 1)))
(define (in-box? pt dims) (let((numin(car dims))(numax(cadr dims))(lambdamin(caddr dims))(lambdamax(cadddr dims)))(and(not(eq? pt '())) (<= numin (car pt) numax)(<= lambdamin (cadr pt)lambdamax))))
(define (in-box-interior? pt dims)(let((numin(car dims))(numax(cadr dims))(lambdamin(caddr dims))(lambdamax(cadddr dims)))(and(not(eq? pt '())) (< numin (car pt) numax)(< lambdamin (cadr pt)lambdamax))))
(define (scalar-prod l1 l2) (reduce + 0 (map * l1 l2)))
(define(intersection l1 l2)(let((M (invert-2-by-2 (append(list-head l1 2)(list-head l2 2))))(b(list(list-ref l1 2)(list-ref l2 2))))
                              (if(null? M)'()(map(lambda(x)(scalar-prod b x))(list(list-head M 2)(list-tail M 2))))))
(define (draw-line dims l style-line)(let*((numin(car dims))(numax(cadr dims))(lambdamin(caddr dims))(lambdamax(cadddr dims))
                                          (boxlines (list(list 1 0 numin)(list 1 0 numax)(list 0 1 lambdamin)(list 0 1 lambdamax)))
                                      (pts (map(lambda(bl)(intersection l bl ))boxlines))
                                      (pts(filter (lambda(pt)(in-box? pt dims)) pts))
                                      (draw-line-pts(lambda(pt1 pt2 style-line)(format #t "\\draw[~a] ~a -- ~a;~%" style-line (drawpoint pt1)(drawpoint pt2))))
                                      ) (begin(format #t "~a~%" l)(if(>=(length pts)2)(draw-line-pts (car pts)(cadr pts)style-line)))))
(define (in-box-line? line dims)(let*((numin(car dims))(numax(cadr dims))(lambdamin(caddr dims))(lambdamax(cadddr dims))
                                          (boxlines (list(list 1 0 numin)(list 1 0 numax)(list 0 1 lambdamin)(list 0 1 lambdamax)))
                                      (pts (map(lambda(bl)(intersection line bl ))boxlines))
                                      (pts (filter(lambda(pt)(in-box? pt dims)) pts )))(>(length pts)0)))
(define(in-set? pt l)
(define(in-set:inner? set)(let((nu(car pt))(llambda(cadr pt)))(cond
                            ((eq? set 'ss)(and(>=(- nu llambda)0)(integer?(/ (- nu llambda)2))))
                            ((eq? set 'nss)(not(in-set:inner? 'ss))))))
(reduce (lambda(x y)(and x y)) #t (map(lambda(ul)(reduce (lambda(u v)(or u v)) #f (map in-set:inner? ul)))l)))

;utils -- print
(define (starttikz scale dims . l)(let((numin(car dims))(numax(cadr dims))(lambdamin(caddr dims))(lambdamax(cadddr dims)))
                              (begin
                                (format #t "\\begin{tikzpicture}~%\\begin{axis}[scale=~h,~%" scale)
                                (format #t "xlabel = {\\hspace{1cm}$\\kern1cm\\nu$},ylabel = $\\lambda$,~%")
                                (format #t "xmin=~d,xmax=~d,ymin=~d,ymax=~d,~%" numin numax lambdamin lambdamax)
                                (format #t "label style={font=\\tiny},tick label style={font=\\tiny},~%")
                                (format #t "label style ={at={(ticklabel cs:1.5)}},~%")
                                (format #t "xtick={~d,~d,...,~d},~%" (+ numin 1) (+ numin 2) (- numax 1))
                                (format #t "ytick={~d,~d,...,~d},~%" (+ lambdamin 1) (+ lambdamin 2) (+ lambdamax -1))
                                (format #t "legend style={font=\\tiny},~%")
                                (format #t "legend pos=outer north east,~%")
                                (format #t "axis lines=middle,legend cell align=left]~%"))))
(define (islinestyle? symb) (or(eq? symb 'solid)(eq? symb 'dotted)(eq? symb 'dashed)));'circ 'tri 'sq
(define (styleline:print symb)
  (cond
    ((eq? symb 'solid)(format #f "line width=0.3mm"))
    ((eq? symb 'dotted)(format #f "line width=0.3mm,style=dotted,color=red"))
    ((eq? symb 'dashed)(format #f "line width=0.3mm,style=dashed,color=blue"))
    ((eq? symb 'circ)(format #f "\\pgfuseplotmark{*}"))
    ((eq? symb 'tri)(format #f "\\pgfuseplotmark{triangle*}"))
    ((eq? symb 'sq)(format #f "\\pgfuseplotmark{square*}"))))
(define (styleline:legend symb) (if(islinestyle? symb)(styleline:print symb)(cond
                                                                              ((eq? symb 'circ) (format #f "only marks, mark=*" ))
                                                                              ((eq? symb 'tri) (format #f "only marks, mark size=3pt,mark=triangle*,color=red" ))
                                                                              ((eq? symb 'sq) (format #f "only marks, mark=square*" )))))
(define (endtikz)  (format #t "\\end{axis}~%\\end{tikzpicture}~%"))

;main engine
(define (print-data-item pq dims linenum dataitem)
(define (generate-lines-next descr count)(let((p(car pq))(q(cadr pq)))(begin
    (cond
        ((eq? descr 'bb) (list 1 1 (+ p q -1 (* -2 count))))
        ((eq? descr 'mmmp) (list 1 0 (if(even? q)(+ 1 (* 2 count))(+ 2 (* 2 count)))))
        ((eq? descr 'mmmm) (list 1 0(if(even? q)(* -1 count)(* -2 count))))
        ((eq? descr 'ss) (list -1 1 (* -2 count)))
        ((eq? descr 'mm) (list 1 0 (+ 1 (* 2 count))))))))
(define(generate-lines-inner descr howmore pool)(begin(if(= 0 howmore)
                                                pool
                                                (let((line(generate-lines-next descr(length pool))))(if(in-box-line? line dims)(generate-lines-inner descr(dec howmore)(cons line pool))pool)))))
(define (generate-lines maxnum descr)
  (if(eq? descr 'mmm)(append(generate-lines-inner 'mmmm(floor(/ maxnum 2))'())(generate-lines-inner 'mmmp(floor(/ maxnum 2))'()))(generate-lines-inner descr maxnum '())))
(define(generate-dots descr1 descr2)(filter
                                      (lambda(pt)(in-box? pt dims))
                                      (reduce append '()(map(lambda(l)(map(lambda(ll)(intersection l ll))(generate-lines linenum descr2)))(generate-lines linenum descr1)))))
  (if (= (length(car dataitem)) 1)
    (map (lambda(line)(draw-line dims line(styleline:print (cadr dataitem))))(generate-lines linenum (caar dataitem)))
    (begin(map(lambda(pt)(format #t "\\node~a at ~a {~a};~%"(if(eq?(cadr dataitem)'tri)"[color=red,mark size=3pt]""")(drawpoint pt)(styleline:print(cadr dataitem))));FIXME: this is ugly
      (filter (lambda(pt)(in-set? pt(caddar dataitem)))(do-memoized myhash (list-head (car dataitem) 2)(lambda(x)(generate-dots(caar dataitem)(cadar dataitem)))))))))
(define (print-legend data) (map(lambda(dataitem)(format #t "\\addlegendimage{~a}~%\\addlegendentry{~a}~%"(styleline:legend(list-ref dataitem 1))(list-ref dataitem 2)))data))

(define (diag1 x)
  (let((dataitems (cddddr data-global))
       (pq(car data-global))
       (dims (cadr data-global))
       (scale (cadddr data-global))
       (linenum (caddr data-global)))
    (begin
    (starttikz scale dims '())
    (map (lambda(dataitem)(print-data-item pq dims linenum dataitem)) dataitems)
    (print-legend dataitems)
    (endtikz))))
