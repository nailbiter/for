(use-modules (ice-9 format))
(use-modules (ice-9 eval-string))
(use-modules (srfi srfi-1))

;constants
(define scale 0.8)
(define colorline "[opacity=0.2,blue,fill=blue]")
(define axeslen 3)

;procedures
(define (myreverse l)(list(cadr l)(car l)))
(define (drawfilledcirc pt)(format #t "\\draw[fill=black] ~a circle (2pt);~%" (drawpoint pt)))
(define (drawline pt1 pt2)(format #t "\\draw[thick] ~a  -- ~a ;~%" (drawpoint pt1)(drawpoint pt2)))
(define (tikzpic callback)(begin
                            (format #t "{\\begin{tikzpicture}[scale=~f]~%" scale)
                            (draw-axes)
                            (callback)
                            (format #t "\\end{tikzpicture}}~%")))
(define (tikzpic-1 callback)(begin
                            (format #t "{\\begin{tikzpicture}[scale=~f]~%" scale)
                            (drawline '(0 0) (list axeslen 0))
                            (drawfilledcirc '(0 0))
                            (callback)
                            (format #t "\\end{tikzpicture}}~%")))
(define (drawpoint l)(format #f "(~f,~f)"(list-ref l 0)(list-ref l 1)))
(define (drawlabel pt text)(format #t "\\node at ~a {$~a$};~%" (drawpoint pt)text))
(define (draw-axes)(begin
                     (format #t "\\draw [<->,thick] ~a node (yaxis) [above] {}~%"(drawpoint(list 0 axeslen)))
                     (format #t "~/|- ~a node (xaxis) [right] {};~%" (drawpoint (list axeslen 0)))))
(define (myforeach each interleave l)(begin(each(car l))(for-each (lambda(x)(begin(interleave)(each x)))(cdr l)))); only use for l!='()
(define (drawarrows start end dir len)
  (let*((mult(lambda(x)(* x len)))
        (lenvec(cond((= dir 0)(map mult '(1 1)))((= dir 1)(map mult '(-1 1)))((= dir 2)(map mult '(-1 -1)))((= dir 3)(map mult '(1 -1)))))
        (ratios '(0.25 0.5 0.75))
        (drawarrow(lambda(start end)(format #t "\\draw [thick,->] ~a -- ~a;~%" (drawpoint start)(drawpoint end))))
        (est(lambda(p1 p2 rat)(map + p1 (map(lambda(x)(* x rat))(map - p2 p1)))))
        (innerproc(lambda(r)(drawarrow(est start end r)(map + (est start end r)lenvec)))))
    (map innerproc ratios)))
;arrows(in/out=0/1) + fill(none/in/out/all=0/1/2/3) + labelConfig
(define (App arrows fill labelConfig)(let((basept '(0 1.5)))
  (begin
       (format #t "\\draw (0,1.5)  -- (1.5,0) ;~%")
       (cond
         ((= arrows 1)(drawarrows basept (myreverse basept) 0 0.15))
         ((= arrows 0)(drawarrows '(0 1.5) '(1.5 0) 2 0.15)))
       (cond
         ((= labelConfig 1)(begin
                             (drawlabel (map + basept '(-1.1 -0.3))"\\nu-n+1")
                             (drawlabel (map + (myreverse basept) '(-1 -0.3) ) "\\nu-n+1")
                             (drawlabel '(1.2 1.2) "A^{--}")))
         ((= labelConfig 0)(begin
                               (format #t "\\node at (1.15,1.15) {$A^{++}$};~%")
                               (drawlabel (map + (myreverse basept) '(-0.2 -0.3)) "-\\nu")
                               (drawlabel (map + basept '(-0.4 -0.3)) "-\\nu"))))
       (cond
         ((= fill 3)(format #t "\\draw ~a ~a -- ~a -- ~a -- (0,0);~%" colorline(drawpoint (list axeslen 0))(drawpoint(list axeslen axeslen))(drawpoint(list 0 axeslen))))
         ((= fill 2)(format #t "\\draw ~a ~a -- ~a -- ~a -- ~a -- ~a ;~%" colorline
                                    (drawpoint basept)
                                    (drawpoint (myreverse basept))
                                    (drawpoint (list axeslen 0))
                                    (drawpoint (list axeslen axeslen))
                                    (drawpoint (list 0 axeslen))))
         ((= fill 1)(format #t "\\draw ~a (1.5,0) -- (0,1.5) -- (0,0);~%" colorline)))
       )))
;arrows(in/out=0/1) + fill(none/in/out=0/1/1) + labelConfig
(define (Apm arrows fill labelConfig)(let((basept '(1.8 0))(lenvec '(1.2 1.2)))
  (begin
       (format #t "\\draw ~a -- ~a ;~%" (drawpoint basept)(drawpoint(map + basept lenvec)))
       (cond
         ((= arrows 1)(drawarrows basept (map + basept lenvec) 3 0.19))
         ((= arrows 0)(drawarrows basept (map + basept lenvec) 1 0.19)))
       (cond
         ((= labelConfig 1)(begin(drawlabel (map + basept lenvec '(0 0.3))"A^{-+}")(drawlabel (map + basept '(1.2 -0.3))"\\nu-p+2")))
         ((= labelConfig 0)(begin(drawlabel (map + basept lenvec '(0 0.3))"A^{+-}")(drawlabel (map + basept '(1.2 -0.3))"-\\nu+q-1"))))
       (cond
         ((= fill 3)(format #t "\\draw ~a ~a -- ~a -- ~a -- (0,0);~%" colorline(drawpoint (list axeslen 0))(drawpoint(list axeslen axeslen))(drawpoint(list 0 axeslen))))
         ((= fill 11)(format #t "\\draw ~a ~a -- ~a -- ~a -- ~a -- (0,0);~%" colorline (drawpoint basept)(drawpoint (map + basept lenvec))(drawpoint(list axeslen axeslen))(drawpoint(list 0 axeslen))))
         ((= fill 2)(format #t "\\draw ~a ~a -- ~a -- ~a;~%"  colorline(drawpoint basept)(drawpoint(map + basept lenvec))(drawpoint(list axeslen 0))));FIXME
         ((= fill 1)(format #t "\\draw ~a ~a -- ~a -- ~a -- ~a -- ~a -- (0,0);~%" 
                            colorline
                            (drawpoint basept)
                            (drawpoint(map + basept lenvec))
                            (drawpoint(list axeslen axeslen))
                            (drawpoint(map + (myreverse basept) lenvec))
                            (drawpoint(myreverse basept)))))
       )))
(define (Amp arrows fill labelConfig)(let((basept '(0 1.8))(lenvec '(1.2 1.2)))
  (begin
       (format #t "\\draw ~a -- ~a ;~%" (drawpoint basept)(drawpoint(map + basept lenvec)))
       
       (cond
         ((= arrows 1)(drawarrows basept (map + basept lenvec) 1 0.19))
         ((= arrows 0)(drawarrows basept (map + basept lenvec) 3 0.19)))
       (cond
         ((= labelConfig 1)(begin(drawlabel(map + basept lenvec '(0.4 0))"A^{+-}")(drawlabel(map + basept '(-1.1 0))"\\nu-q+1")))
         ((= labelConfig 0)(begin(drawlabel(map + basept lenvec '(0.4 0))"A^{-+}")(drawlabel(map + basept '(-1.1 0))"-\\nu+p-2"))))
       (cond
         ((= fill 3)(format #t "\\draw ~a ~a -- ~a -- ~a -- (0,0);~%" colorline(drawpoint (list axeslen 0))(drawpoint(list axeslen axeslen))(drawpoint(list 0 axeslen))))
         ((= fill 11)(format #t "\\draw ~a ~a -- ~a -- ~a -- ~a -- (0,0);~%" colorline (drawpoint basept)(drawpoint (map + basept lenvec))(drawpoint(list axeslen axeslen))(drawpoint(list axeslen 0))))
         ((= fill 1)(format #t "\\draw ~a ~a -- ~a -- ~a -- ~a -- ~a -- (0,0);~%" 
                            colorline
                            (drawpoint basept)
                            (drawpoint(map + basept lenvec))
                            (drawpoint(list axeslen axeslen))
                            (drawpoint(map + (myreverse basept) lenvec))
                            (drawpoint(myreverse basept))))
         ((= fill 2)(format #t "\\draw ~a ~a -- ~a -- ~a;~%" colorline(drawpoint basept)(drawpoint(map + basept lenvec))(drawpoint(list 0 axeslen)))))
       )))

(define (mp arg)(myforeach
                         (lambda(x)(if(string=? x "()")'()(tikzpic(lambda()(map 
                                                      (lambda(l)(let((line(list-ref l 0))(arrows(list-ref l 1))(fill(list-ref l 2))(labelConfig(list-ref l 3)))
                                                                 (cond
                                                                   ((eq? line 'App)(App arrows fill labelConfig))((eq? line 'Amp)(Amp arrows fill labelConfig))
                                                                   ((eq? line 'Apm)(Apm arrows fill labelConfig)))))
                                                       ( read (open-input-string x)))))))
                         (lambda()(display "&"))
                         (cdr arg)))
(define (mp1 arg)(myforeach
                         (lambda(x)(if(string=? x "()")
                                     (format #t "{\\vspace{-0.7cm}$\\quad\\;\\;\\quad\\times$}")(tikzpic-1(lambda()
                                     (let*((l(read (open-input-string x)))(l1(car l))(pad 0.05)(wid 0.36)(mysum(reduce + 0 l))(myfill(lambda(x1 x2)(format #t"\\draw ~a ~a -- ~a -- ~a -- ~a ~%;"colorline
                                                                                                                            (drawpoint(list (- x1 pad)  (- wid)))(drawpoint(list (- x1 pad) wid))
                                                                                                                            (drawpoint(list (+ x2 pad) wid))(drawpoint(list (+ x2 pad) (- wid)))))))
                                       (if(=(length l)1) (if(= l1 1)(myfill 0 axeslen))
                                         (begin
                                           (drawfilledcirc (list (/ axeslen 2) 0))
                                           (if(= l1 0)
                                             (format #t "\\node at (1.5,0) {\\huge ]};~%\\node[align=center, above] at (1.5,0.5) {$-\\nu$}~%;")
                                             (format #t "\\node at (1.5,0) {\\huge [};~%\\node[align=center, above] at (1.5,0.5) {$\\nu-q$}~%;"))
                                           (cond 
                                             ((=(cadr l)0)'())
                                             ((=(cadr l)2)(myfill 0 axeslen))
                                             (else (if(odd? mysum)(myfill 0 (/ axeslen 2))(myfill (/ axeslen 2) axeslen)))))))))))
                         (lambda()(display "&"))
                         (cdr arg)))
