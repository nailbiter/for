(setlocale LC_ALL "")
(include "misc.scm")
(include "char->transcr.scm")

(define sample-text "我覺得呢張相上面啲人嘅打扮同而家好唔同。點解呢？第一個係佢哋嘅褲。上面好狹，但係下面好寛，好似一個鏞。第二個係佢哋嘅上衣。佢哋嘅上衣好正式，顏色唔太晶，但係有幾個人着比較潮嘅臘腸褲。無人會着T恤或者仔褲同波鞋。仲有呢，三個人會帶太陽眼鏡。我其實好鍾意佢哋着嘅衫，但係我覺得有少少太正式。仲有呢佢哋嘅髮型唔太特別，但係好淨。我最鍾意嘅係從左邊第二個。佢雖然冇中間嘅人嘅打扮咁靚，但係仲係比較似男人。")
(define (concat-by-n l n) (cond ((null? l) '())((<(length l)n)(list (string-concatenate l)))(#t
                                                                                            (cons (string-concatenate (list-head l n))
                                                                                           (concat-by-n (list-tail l n) n)))))
;(define char->transcr (map cons (string-split 
;"打扮張相上褲狹寛鏞正式顏色晶着比較潮臘腸褲記波鞋陽眼鏡衫髮型特別淨似仔雖然"
;)(mytokenize " +" 
;(string-concatenate (list "da2a baahn zeo1ng seong se2uhng fu haahp fu1n dohk zing sik nga2ahn si1k zi1ng jeuk be2i " 
;                          "gaau siu2h laahp seo2ng fu gei bo1 haa2ih jeo4ng ngaa2hn ge2ng sa1am faat ji4ng dak biht zihng chi2h jai"
;                          " se2ui yi4hn"
;                          ))
;)))
                        ;
(define (mychangetranscription str)
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])1" s 'pre "\\={" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])2" s 'pre "\\'{" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])4" s 'pre "\\`{" 1 "}" 'post))str)))
  )
(define (insert-ruby text) (map (lambda (str) (let* ((val (get-value char->transcr str "")))
               (if(string-null? val)str(string-concatenate (list "\\ruby{" str "}{" (mychangetranscription val) "}")))
               )) (string-split text)))

;update char->transcr, if necessary
(define char->transcr (query-string-mapping char->transcr "最左衣間"))
(save-string-mapping char->transcr "char->transcr" "char->transcr.scm")

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
