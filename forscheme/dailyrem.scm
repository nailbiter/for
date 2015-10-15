(setlocale LC_ALL "")
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(use-modules (srfi srfi-19))

(load "../forscheme/misc.scm")
(load "../forscheme/seminar_reminder.scm")

(define email-address "alozz1991@gmail.com")
(define topic "daily remainder")
(define url "https://docs.google.com/spreadsheets/d/1uJWsDYS3-5UKc2JuRNtYM7O1kTzQXln6GM0meqhcJC8/pub?gid=1344010549&single=true&output=csv")

(define (mail msg)
(let ((port (open-output-pipe (string-append "mail -s " "\"" topic "\" " email-address))))
  (display msg port))
)

(define dateline
  (let* ((date (current-date))
         (date-line (format #f "~d/~2,'0d/~2,'0d" (date-year date)(date-month date)(date-day date))))
    date-line))

(define lines
(let* ((todo (mytokenize "\r" (read-delimited "" (open-input-pipe(string-append "wget -O -" " \"" url "\"")))))
       (todo(cdr todo))
       (todo (map (lambda(s)(string-drop s(inc(string-index s #\,)))) todo))
       (myaux (lambda(s)(string-take s (string-rindex s #\,))))
       (todo (map(lambda(s)(fold (lambda(a b)(myaux b)) s(seq 0 5)))todo))
       (todo(map (lambda(s)(cons(myaux s)(string-drop s (inc(string-rindex s #\,)))))todo))
       (today-todo(filter (lambda(e)(string=? dateline (cdr e)))todo))
       (today-todo(map (lambda(p)(string-append(car p)"\n*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+\n")) today-todo))
       (todoline (string-concatenate today-todo))
       (todoline(string-append "TODO:\n*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+*+\n"todoline))
       (rules (filter (lambda(e)(string=? "2015/06/06" (cdr e)))todo))
       (rulesline(string-concatenate(map(lambda(l)(string-append(car l)"\n"))rules)))
       )
    ;(map (lambda(x)(begin(display x)(newline))) todo))
     (list todoline rulesline)))

(mail (string-concatenate (map (lambda(l)(string-append l "\n"))(cons (today-seminars dateline)lines))))
