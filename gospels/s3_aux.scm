(setlocale LC_ALL "")
(include "../forscheme/misc.scm")

(define (drop-even l) (if (null? l) '() (cons (car l) (drop-even (cddr l)))))

(define rus2chiurl-table (list
			(cons "Лк" "luk")
			(cons "1 Кор" "1co")
            (cons "Мф" "mat")
			(cons "Мк" "mak");"馬太福音"
			(cons "Лк" "luk")
			(cons "Евр" "jue")
			(cons "1 Кор" "1co")
			(cons "2 Кор" "2co")
			(cons "1 Тим" "1ti")
			(cons "2 Тим" "2ti")
            (cons "Рим" "rom")
			))
(define rusname2engname-table(list 
           (cons "Гал" "Galatians")
           (cons "Мк" "Mark")
           (cons "Мф" "Matthew")
		   (cons "Евр" "Hebrews")
           (cons "Лк" "Luke")
		   (cons "1 Кор" "1 Corinthians")
		   (cons "2 Кор" "2 Corinthians")
		   (cons "1 Тим" "1 Timothy")
		   (cons "2 Тим" "2 Timothy")
           (cons "Рим" "Romans")
           ))
(define rusname2chiname-table (list 
                   (cons "Гал" "加拉太書")
                   (cons "Мк" "馬可福音")
                   (cons "Мф" "馬太福音")
                   (cons "Лк" "路加福音")
                   (cons "Евр" "希伯來書")
                   (cons "1 Кор" "哥林多前書")
                   (cons "2 Кор" "哥林多後書")
                   (cons "1 Тим" "提摩太前書")
                   (cons "2 Тим" "提摩太後書")
                   (cons "Рим" "羅馬書")
           ))

(define (roman2arabic romtext) (get-value (list 
                                            (cons "I" "1")(cons "II" "2")(cons "III" "3")(cons "IV" "4")(cons "V" "5")
                                            (cons "VI" "6")(cons "VII" "7")(cons "VIII" "8")(cons "IX" "8")(cons "X" "10")
                                            (cons "XI" "11")(cons "XII" "12")(cons "XIII" "13")(cons "XIV" "14")(cons "XV" "15")
                                            (cons "XVI" "16")(cons "XVII" "17")(cons "XVIII" "18")(cons "XIX" "19")(cons "XX" "20")
                                            (cons "XXI" "21")(cons "XXII" "22")(cons "XXIII" "23")(cons "XXIV" "24")(cons "XXV" "25")
                                            )
                                          romtext))

(define (parse-russian-title text) (define s 'myflatten)
(define myflatten(lambda(l)(if(null? l)'()(if(and(list?(car l))(eq?(caar l)s))(union(cdar l)(myflatten(cdr l)))
                                            (cons(car l)(myflatten(cdr l)))))))
  (define (mymap proc l init)(if(null? l)'()(let((res(proc(car l)init)))(cons (car res) (mymap proc (cdr l)(cdr res))))))
  (let* ((tokenized (mytokenize " *, *" text))
         (name (string-filter (lambda (char) (not (eq? #\. char))) (list-ref tokenized 0)))
         (tokenized (list-tail tokenized 2))
         (chapter (roman2arabic (list-ref tokenized 0)))
         (verses(map (lambda(m)(map(lambda(n)(match:substring m n))'(1 2 3 4)))(list-matches 
                                         ", *([XVI]*),? *([0-9]+) *- *([XVI]*),? *([0-9]+)[^.,0-9XVI]*" text)))
         (verses (mymap (lambda(verse prev-chap)(let*((c1 (list-ref verse 0))(c2 (list-ref verse 2))
                                                     (v1(list-ref verse 1))(v2(list-ref verse 3))
                                                     (c1(if(string-null? c1)prev-chap c1))(c2(if(string-null? c2)c1 c2))
                                                     (new-verse(if(eq? c1 c2)(list c1 v1 v2)
                                                                 (list s(list c1 v1 'end)(list c2 'start v2))))
                                                         )(cons new-verse c1))) verses "error-chap"))
         )(list name (myflatten verses))))

;TODO: framework: 	generate url for chapter --> get reading out of chapter --> process line
;	names formatting
(define (get-rdg-english-text args)
(let* (
        (name (list-ref args 0))
        (chapter (list-ref args 1))
        (verse-start (list-ref args 2))
        (verse-end (list-ref args 3))
        (source  (download2string (string-concatenate (list "\"http://www.kingjamesbibleonline.org/book.php?book=" (string-map (lambda (char) 
                                                    (if (char=? char #\space) #\+ char)) (rusname2engname name)) "&chapter=" chapter "&verse=\""))))
        (lines (mytokenize "</a>" source))
        (lines (flatten (map (lambda (s) (mytokenize "<a href=\"" s)) lines)))
        (lines (filter (lambda (line) (regexp-match? (string-match "View more translations of" line))) lines))
        (lines (map (lambda(line)(cons (substring (match:substring (string-match ":[0-9]+" line)) 1)(match:suffix (string-match ">" line)))) lines))
            (lines (filter (lambda (pair) (<= (string->number verse-start)(string->number (car pair))(string->number verse-end))) lines))
        (lines (map (lambda(pair)(string-concatenate (list (cdr pair) "\\\\\n"))) lines))
	 (lines (map (lambda(s) (regexp-substitute/global #f "<[^<>]*>" s 'pre 'post))lines))
         )
        (string-concatenate lines)
    ))

;chinese text
(define (get-rdg-chinese-text args)
(let* (
      (name (list-ref args 0))
      (chapter (list-ref args 1))
      (verse-start (list-ref args 2))
     (verse-end (list-ref args 3))
     (code (get-value rus2chiurl-table name))
     (download2string/big5 
       (lambda(url)(read-delimited""(open-input-pipe(string-concatenate(list"wget -O - "url"|iconv -f Big5 -t UTF8"))))))
     (chinese-url(string-concatenate(list "\"http://www.o-bible.com/cgibin/ob.cgi?version=hb5&book=" code "&chapter=" chapter "\"")))
     (source (download2string/big5 chinese-url))
     (verses (map (lambda(match)(cons (match:substring match 1) (match:substring match 2)))
       (list-matches"<td class=\"vn\">[0-9]+:([0-9]+)</td><td class=\"vn\">&nbsp;&nbsp;</td><td class=\"v b5\">([^<>]+)</td>"source)))
	        (verses (filter (lambda(pair)(<= (string->number verse-start)(string->number (car pair))(string->number verse-end))) verses))
     (verses (map cdr verses))
	 (verses (map(lambda(s)(string-filter(lambda(char)(not(or(eq? #\newline char)(eq? #\space char)(eq? #\tab char))))s))verses))
     (verses (map (lambda(s)(string-concatenate(list s "\\\\\n"))) verses)))
        (string-concatenate verses)
    ))

;titles
(define (get-eng-title args)
  (let((name (list-ref args 0))(chapter (list-ref args 1))(verse-start (list-ref args 2))(verse-end (list-ref args 3)))
  (string-concatenate (list (rusname2engname name) " "  chapter ":" verse-start " -- "  chapter ":" verse-end "."))))
                                                                                     
        
(define (get-chi-title name chapter verse-start verse-end) 
  (let((name (list-ref args 0))(chapter (list-ref args 1))(verse-start (list-ref args 2))(verse-end (list-ref args 3)))
    (string-concatenate (list (rusname2chiname name) " "  chapter ":"verse-start " -- "  chapter ":" verse-end "."))))
                                                                                     
(define (rusname2engname rusname) (get-value rusname2engname-table rusname))
(define (rusname2chiname rusname) (get-value rusname2chiname-table rusname))

;script
(map (lambda (s)(begin(display (parse-russian-title s))(newline))) (list 
"Евр., 329 зач. (от полу́), XI, 24-26, 32 - XII, 2." 
"Ин., 5 зач., I, 43-51." 
"Рим., 112 зач., XIII, 11 - XIV, 4." 
"Мф., 17 зач., VI, 14-21*."
))
;, *([XVI]*),? *([0-9]*)- *([XVI]*),? *([0-9]*) *[,.]
