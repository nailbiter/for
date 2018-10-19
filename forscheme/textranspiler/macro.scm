(define HashTable (make-hash-table 10))
(define (myput label value)(hashq-set! HashTable label value))
(define (myget label)(hashq-ref HashTable label))

(define(waverage pt1 pt2 coeff)
  (map +(map(lambda(x)(* x coeff))pt1)(map(lambda(x)(* x(- 1 coeff)))pt2)))

(define (p2s pt)(format #f"(~1,2f, ~1,2f)"(car pt)(cadr pt)))

(define(myflush)(map (lambda(line)(format #t "~a~%"line))mydata))
(define
  (myrect-with-title title center-x center-y wid num)
  (let
    ((hei 0.7)
     (dhei 0.2)
     (half(lambda(x)(/ x 2))))
    (begin
      (format 
          #t (string-join (cons "%myrect-with-title"mydata) "\n")
          (- center-x(half wid))(- center-y(half hei))
          (+ center-x(half wid))(+ center-y(half hei))
          center-x center-y title
          center-x (- center-y (half hei) dhei) num)
      (myput title(list center-x center-y)))))

(define (myarrow l1 l2 c1 c2 title)
  (format
    #t "\\draw[->,>=angle 90,color=black] ~a -- node {~a} ~a;~%"
    (p2s (waverage (myget l2)(myget l1)c1))
    title
    (p2s(waverage (myget l2)(myget l1)c2))))
