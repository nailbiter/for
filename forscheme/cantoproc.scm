(include "misc.scm")
(use-modules (ice-9 popen))
(define (mytokenize regexp str) (define cr (make-regexp regexp))
  (define (inner str start)
    (if (<= (string-length str) start) '()
	((lambda () (define res (regexp-exec cr str start))
	   (if (regexp-match? res) 
	     (if (= (match:start res) start) (inner str (match:end res))
	  (cons (substring str start (match:start res)) (inner str (match:end res))))
	  (list (substring str start)))))
	))
  (inner str 0))
(setlocale LC_ALL "")
(define (string-split str) (if(string-null? str)'()(cons(substring str 0 1)(string-split (string-drop str 1)))))
(define sample-text "我覺得呢張相上面啲人嘅打扮同而家好唔同。點解呢？第一個係佢哋嘅褲。上面好狹，但係下面好寛，好似一個鏞。第二個係佢哋嘅上衣。佢哋嘅上衣好正式，顏色唔太晶，但係有幾個人着比較潮嘅臘腸褲。無人會着T恤或者牛記同波鞋。仲有呢，三個人會帶太陽眼鏡。我其實好鍾意佢哋着嘅衫，但係我覺得有少少太正式。仲有呢髮型嘅唔太特別，但係好淨。")
(define (concat-by-n l n) (cond ((null? l) '())((<(length l)n)(list (string-concatenate l)))(#t
                                                                                            (cons (string-concatenate (list-head l n))
                                                                                           (concat-by-n (list-tail l n) n)))))
(define char->transcr (map cons (string-split 
"打扮張相上褲狹寛鏞正式顏色晶着比較潮臘腸褲記波鞋陽眼鏡衫髮型特別淨"
)(mytokenize " +" 
(string-concatenate (list "da2a baahn zeo1ng seong se2uhng fu haahp fu1n dohk zing sik nga2ahn si1k zi1ng jeuk be2i " 
                          "gaau siu2h laahp seo2ng fu gei bo1 haa2ih jeo4ng ngaa2hn ge2ng sa1am faat ji4ng dak biht zihng"
                          ))
)))
                        ;
;牛同波鞋。仲有呢，三個人會帶太陽眼;
;鏡。我其實好鍾意基地哋着嘅衫，但係我覺得有少少太正式。仲有呢髮型嘅唔太特別，但係好淨。
(define (mychangetranscription str)
    ((lambda(s) (regexp-substitute/global #f "([aeiou])1" s 'pre "\\'{" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeiou])2" s 'pre "\\={" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeiou])4" s 'pre "\\`{" 1 "}" 'post))str)))
  )
(define (insert-ruby text) (map (lambda (str) (let* ((val (get-value char->transcr str "")))
               (if(string-null? val)str(string-concatenate (list "\\ruby{" str "}{" (mychangetranscription val) "}")))
               )) (string-split text)))
(let* ((xelatex-src
(string-concatenate (list
"\\documentclass[12pt]{article}\n
\\usepackage{fontspec}\n
\\setmainfont{AR PL UKai HK}\n
\\usepackage{xunicode}\n
\\usepackage{xltxtra}\n
\\usepackage{ruby}\n
\\renewcommand\\rubysep{-0.0ex}\n
\\begin{document}\n
\\huge\n"
            (string-concatenate (map (lambda (str)(string-concatenate (list str "\n")))(concat-by-n (insert-ruby sample-text) 5)))
"\\end{document}"
            )))
       (port (open-output-pipe "xelatex -jobname=canto"))
       )
(display xelatex-src port)
)
;get pronunciation from web, render to tex
;mnemonic functions
;put altogether
