(setlocale LC_ALL "")
(include "misc.scm")
(include "char->transcr.scm")

(define(get-translation char)(let*( (code (read-delimited "" (open-input-pipe (string-concatenate (list "./big5.exe " char)))))
                                   (code (string-concatenate (list "%" (substring code 0 2) "%" (substring code 2 4))))
                                    (raw (download2string(string-concatenate(list "http://humanum.arts.cuhk.edu.hk/Lexis/lexi-can/"
                                                                                 "search.php?q=" code))))
                                    (match-res (string-match "sound.php.s=([a-z]+[0-9])" raw))
                                    (transl (if (regexp-match? match-res) (match:substring match-res 1) "false"))
                                    )
                               (jyutping->yale transl)))
(define (jyutping->yale what)(let*( (transl what)
                                    (transl (regexp-substitute/global #f "j" transl 'pre "y" 'post))
                                    (transl (regexp-substitute/global #f "z" transl 'pre "j" 'post))
                                    (transl (regexp-substitute/global #f "c" transl 'pre "ch" 'post))
                                    (transl (regexp-substitute/global #f "eo" transl 'pre "eu" 'post))
                                    (transl (regexp-substitute/global #f "aan" transl 'pre "aap" 'post))
                                    (transl (myglobsubs transl "oe" "eu"))
                                    (vowel? (lambda (s) (string-contains "aeouiy" s)))
                                    (tone (string-take-right transl 1))
                                    (transl (string-drop-right transl 1))
                                    (first-vowel-index (find-first-index (string-split transl) vowel?))
                                    (tonemark (cond ((string=? tone "1") "1")((string=? tone "2") "2")((string=? tone "6") "")
                                            ((string=? tone "4") "4")((string=? tone "5") "2")((string=? tone "3") "")))
                                    (transl (string-replace transl tonemark (+ 1 first-vowel-index)(+ 1 first-vowel-index)))
				    (transl-len (string-length transl))
				    (transl (if (string-contains "123456aeouiy" (string-take-right transl 1))(string-concatenate(list transl "h"))
					      (string-replace transl "h" (dec transl-len)(dec transl-len))))
                                    )transl))
(define (query-string-mapping table query-line) 
  (let* (   (unseen-list (filter (lambda (s) (string-null? (get-value/msg table s "")))(string-split query-line)))
            (addition (map (lambda (s) (cons s (get-translation s))) unseen-list)) )
    (append table addition)))

;(define sample-text "我覺得呢張相上面啲人嘅打扮同而家好唔同。點解呢？第一個係佢哋嘅褲。上面好狹，但係下面好寛，好似一個鏞。第二個係佢哋嘅上衣。佢哋嘅上衣好正式，顏色唔太晶，但係有幾個人着比較潮嘅臘腸褲。無人會着T恤或者仔褲同波鞋。仲有呢，三個人會帶太陽眼鏡。我其實好鍾意佢哋着嘅衫，但係我覺得有少少太正式。仲有呢佢哋嘅髮型唔太特別，但係好淨。我最鍾意嘅係從左邊第二個。佢雖然冇中間嘅人嘅打扮咁靚，但係仲係比較似男人。")
(define sample-text "我覺得起先你會需5個大嘅雞翼同兩杯豉油，兩杯黃糖同兩匙蒜茸。第一個你要撈豉油蒜茸同黃糖喺一齊。仲有呢，銻煲裏紋到糖開始化。糖化完之後涼吓。仲有呢，你要放雞翼喺大嘅碗裏邊，撈吓。罨，放雪櫃裏邊，等8個鐘頭雞翼喺雪櫃會醃。收尾焗大約45分鐘。如果你鍾意，可以加薑紅,番椒或者桂。仲有，雞翼有好多種整法，例如油炸、咖喱、鹵水、香茅、燒烤、甜豉油，等等")

(define (mychangetranscription str)
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])1" s 'pre "\\={" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])2" s 'pre "\\'{" 1 "}" 'post))
    ((lambda(s) (regexp-substitute/global #f "([aeyiou])4" s 'pre "\\`{" 1 "}" 'post))str)))
  )
(define (insert-ruby text) (map (lambda (str) (let* ((val (get-value/msg char->transcr str "")))
               (if(string-null? val)str(string-concatenate (list "\\ruby{" str "}{" (mychangetranscription val) "}")))
               )) (string-split text)))

;update char->transcr, if necessary
(define char->transcr (query-string-mapping char->transcr "翼需豉油撈黃糖蒜茸放撈銻煲紋碗罨雪櫃醃約薑紅番椒桂種整法例如油炸咖喱鹵香茅燒烤甜豉油匙"))
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
(display xelatex-src port))
