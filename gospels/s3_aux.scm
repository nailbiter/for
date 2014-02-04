(include "../forscheme/misc.scm")

(define rus2chiurl-table (list
			(cons "Гал" "GAL")
			(cons "Мк" "MRK");"馬太福音"
			(cons "Лк" "LUK")
			(cons "Евр" "HEB")
			(cons "1 Кор" "1CO")
			(cons "2 Кор" "2CO")
			(cons "1 Тим" "1TI")
			(cons "2 Тим" "2TI")
			))

(define (dec n) (- n 1))
(define (inc n) (+ n 1))
(define (replace l num elem) (if (<= num 0) (cons elem (cdr l)) (cons (car l) (replace (cdr l) (dec num) elem))))
(define (get-value l key) (if (null? l) (string-concatenate (list "not found:" key))
                            (if (string=? key (car (car l))) (cdr (car l)) (get-value (cdr l) key))))
(define (drop-even l) (if (null? l) '() (cons (car l) (drop-even (cddr l)))))


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
(define (download2string url) (read-delimited "" (open-input-pipe (string-concatenate (list "wget -O - "
                                                   url)))))

(define (roman2arabic romtext) (get-value (list 
                                            (cons "I" "1")(cons "II" "2")(cons "III" "3")(cons "IV" "4")(cons "V" "5")
                                            (cons "VI" "6")(cons "VII" "7")(cons "VIII" "8")(cons "IX" "8")(cons "X" "10")
                                            (cons "XI" "11")(cons "XII" "12")(cons "XIII" "13")(cons "XIV" "14")(cons "XV" "15")
                                            (cons "XVI" "16")(cons "XVII" "17")(cons "XVIII" "18")(cons "XIX" "19")(cons "XX" "20")
                                            )
                                          romtext))

(define (rusname2engname rusname) (get-value (list 
                   (cons "Гал" "Galatians")
                   (cons "Мк" "Mark")
		   (cons "Евр" "Hebrews")
                   (cons "Лк" "Luke")
		   (cons "1 Кор" "1 Corinthians")
		   (cons "2 Кор" "2 Corinthians")
		   (cons "1 Тим" "1 Timothy")
		   (cons "2 Тим" "2 Timothy")
                                            ) rusname))
(define (rusname2chiname rusname) (get-value (list 
                   (cons "Гал" "加拉太書")
                   (cons "Мк" "馬可福音");"馬太福音" ""
                   (cons "Лк" "路加福音")
		   (cons "Евр" "希伯來書")
		   (cons "1 Кор" "哥林多前書")
		   (cons "2 Кор" "哥林多後書")
		   (cons "1 Тим" "提摩太前書")
		   (cons "2 Тим" "提摩太後書")
                                            ) rusname))

(define (parse-russian-title text) (let* ((tokenized1 (mytokenize " *, *" text))
                                     (name (string-filter (lambda (char) (not (eq? #\. char))) (list-ref tokenized1 0)))
                                     (chapter (roman2arabic (list-ref tokenized1 2)))
                                     (verses (mytokenize "-" (list-ref tokenized1 3)))
                                     (verse-start (car verses))
                                     (verse-end (string-filter (lambda (char) (not (eq? #\. char)))  (cadr verses)))
                                     )(list name chapter verse-start verse-end)))

(define (get-rdg-english-text name chapter verse-start verse-end)
(let* ((source  (download2string (string-concatenate (list "\"http://www.kingjamesbibleonline.org/book.php?book=" (string-map (lambda (char) 
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
(define (get-rdg-chinese-url name chapter) (string-concatenate (list "\"http://rcuv.hkbs.org.hk/bible_list.php?dowhat=&is_search=&bible="
								     (get-value rus2chiurl-table name) "&kw=&chapter=" chapter
	"&searchkey=0&read_chkRCUV=RCUV&read_chkCUNP=&read_chkBoth=&chk_version=RCUV&godVersionOption=god1&displayOption=list&kw=&bible_testament="
	"whole&search_topic_from=GEN&search_chapter_from=0&search_topic_to=GEN&search_chapter_to=0&chapter=" chapter "&version=RCUV&bible="
								     (get-value rus2chiurl-table name) "\""
								 )))
(define (get-rdg-chinese-text name chapter verse-start verse-end)
(let* ((source  (download2string (get-rdg-chinese-url name chapter)))
         (has-substring (lambda (subs s) (regexp-match? (string-match subs s))))
	 (before-last (lambda (pat src) (match:prefix (car (last-pair (list-matches pat src))))))
	 (after-first (lambda (pat src) (match:suffix (string-match pat src))))
	 (global-eliminate (lambda(pat src)(regexp-substitute/global #f pat src 'pre 'post)))
       	 (lines (list-tail (mytokenize "<td valign=\"top\" nowrap >" source) 1))
	 (lines (filter (lambda (s) (has-substring"!--" s)) lines))
	 (lines (filter (lambda (s) (has-substring"[0-9]+</td>" s)) lines))
	 (lines(map(lambda(s)(let*((matchs (string-match "[0-9]+</td>" s))(ss(match:substring matchs)))
			       (cons(string-drop-right ss 5)(match:suffix matchs)))) lines))
	 (lines (filter (lambda(pair)(<= (string->number verse-start)(string->number (car pair))(string->number verse-end))) lines))
	 (lines (map(lambda(pair)(cons(car pair)(before-last "</span>"(after-first "-->"(cdr pair)))))lines))
	 (lines (map(lambda(pair)(cons(car pair)(global-eliminate "<sup>.*</sup>" (cdr pair))))lines))
	 (lines (map(lambda(pair)(cons(car pair)(global-eliminate "<td valign=\"top\" style=\"line-height:20px;\"><span>" (cdr pair))))lines))
	 (lines (map(lambda(pair)(cons(car pair)(global-eliminate "<span class='pnpn-SpecialText-ProperName'>" (cdr pair))))lines))
	 (lines (map(lambda(pair)(cons(car pair)(global-eliminate "<[^<>]*>" (cdr pair))))lines))
	 (lines (map(lambda(pair)(cons(car pair)(string-drop (cdr pair) 1)))lines))
	 (lines (map(lambda(pair)(cons(car pair)(string-filter(lambda(char)(and(not (eq? #\newline char))(not(eq? #\tab char))))(cdr pair))))lines))
	 (lines (map (lambda(pair)(string-concatenate(list(cdr pair)"\\\\\n"))) lines))
       	 ;(lines (map match:substring (list-matches "<span>[^<>]+</span>" source)))
       	 ;(lines (map (lambda (s) (substring s 7 (- (string-length s) 9))) lines))
	 ;(lines (drop-even lines))
	 ;(start-number (string->number verse-start))
	 ;(end-number (string->number verse-end))
	 ;(lines (list-head lines (dec end-number)))
	 ;(lines (list-tail lines (dec start-number)))
	 ;(lines (map (lambda (s) (string-concatenate (list s "\\\\\n"))) lines))
         )
        (string-concatenate lines)
    ))

;titles
(define (get-eng-title name chapter verse-start verse-end) (string-concatenate (list (rusname2engname name) " "  chapter ":"
                                                                                     verse-start " -- "  chapter ":" verse-end ".")))
(define (get-chi-title name chapter verse-start verse-end) (string-concatenate (list (rusname2chiname name) " "  chapter ":"
                                                                                     verse-start " -- "  chapter ":" verse-end ".")))

