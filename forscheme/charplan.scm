(setlocale LC_ALL "")
(include "misc.scm")

(define filenames (list "../tests/kanjiclass.txt" "../tests/jbridge.txt"))
(define lines(lambda(fn) (mytokenize "\n" (read-delimited "" (open-file fn "r")))))

(define hira?(lambda(c)(if(eq?(string-index (string-append "ゃゅょっゝ゛゜あいうえおかきくけこさしすせそたちつて"
                                                           "となにぬねのはひふへほまみむめもやゆよらりるれろわゐゑをん"
                                                           "ぐげごばざじずぜぞだがどづべび"
                                                           "ぶぼぢぎでペぱぴぽぷ")c)#f)#f #t)))
(define kata?(lambda(c)(if(eq?(string-index 
                                "トナニヌネノハヒフヘホマゥタコクミムメチッシモヤユヨラリルレロワスイテブセキオングゲゴバザジズゼゾダガドズベビパピポプ"
                                c)#f)#f #t)))
(define kanji? (lambda(c)(not(or(kata? c)
                               (hira? c)
                               (char-set-contains? char-set:ascii c)
                               (not(eq?(string-index "１２３４５６７８９０〜／々" c)#f))
                               ))));FIXME: ascii

(map (lambda(l)(begin(display l)(newline))) (list-tail  (lines(car filenames)) (- (length (lines(car filenames))) 10)))
(newline)
(display(delete-duplicates (filter kanji? (fold-right append '() (map (lambda(fn)(fold-right append '() (map string->list (lines fn))))filenames)))))
(newline)
(display (string-filter kanji? "ionsutnseotunseotu読まなければいけない、読まなきゃいけない"))
;FIXME: not all lines are read from jbridge, not all chars
