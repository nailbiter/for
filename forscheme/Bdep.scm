;;restrictions:
;;  \begin{prop},\end{\prop},\section{blabla}\label ... should be on one line
;;  \label{} should go immediately after \begin{proposition} ...
;;  all defs should be in preamble
;;  preamble should include all necessary for doing graphviz diags (i.e. dot2texi etc.)

(use-modules (ice-9 format))
(use-modules (ice-9 eval-string))
(use-modules (srfi srfi-1))
(use-modules (ice-9 rdelim))
(use-modules (ice-9 regex))
(use-modules (ice-9 popen))
(use-modules (ice-9 format))
(use-modules (srfi srfi-1))
(load "../../forscheme/misc.scm")
(set! *random-state* (random-state-from-platform))

;;global constants
(define lines (mytokenize "\n" (read-delimited "" (open-file (cadr (command-line)) "r"))))
(define start-count 9)
(define preamble(list-head lines(search-list (lambda(line)(regexp-match?(string-match "\\\\begin\\{document\\}" line))) lines)))

;;procedures
(define (verbatim s)(format #t "\\begin{verbatim}~a\\end{verbatim}~%" s))
(define (texwrap proc . preamble)
  (begin
    (if (null? preamble)
      (format #t "\\documentstyle[12pt]{article}~%")
      (map (lambda(line)(format #t "~a~%" line)) (car preamble))
      )
    (format #t "\\begin{document}~%")
    (proc)
    (format #t "\\end{document}~%")))
;;(split-array (== "sep..") (=> ...) '("1" "sep0" "2" "3" "sep4" "4" "sep4" "5" "6")) => '(("0" "2" "3") ("4" "4") ("4" "5" "6"))
(define (split-array crit func array)
(define (iter res status accum remain)
    (cond
      ((null? remain) (if(null? status) res(append res (list (cons status accum)))))
      ((crit(car remain))(if(null? status)(iter res (func(car remain)) '() (cdr remain))(iter (append res (list (cons status accum))) (func (car remain)) '() (cdr remain) )))
      (else (iter res status (append accum (list (car remain))) (cdr remain)))))
  (iter '() '() '() array))

;;body
;(texwrap(lambda()  (map (lambda(m)(verbatim(match:substring m 0))) (list-matches "\\\\section\\{[^\\}]+\\}" source))))
(let*((count-var (make-variable (dec start-count)))
      ;;format of section: ((title num) . section-body)
      (sections (split-array 
                                           (lambda(x)(regexp-match? (string-match "\\\\section\\{" x)))
                                           (lambda(x)
                                           (let*((s x)
                                                (s (string-drop s (inc (string-index s #\{))))
                                                (s (string-take s (dec (string-contains s "\\label"))))
                                                )(begin(inc-var count-var)(list s (variable-ref count-var)))))
                                           lines))
      (sec:get-body cdr)
      (sec:get-head car)
      (sec:get-number cadar)
      (parse-environment-begin (lambda (line)(let((res (string-match "\\\\begin\\{([a-z]+)\\}" line)))(if(eq? res #f) #f (match:substring res 1)))))
      (numbered-env-list(list "definition" "proposition" "lemma" "fact" "remark"))
      (env-list(list "definition" "proposition" "lemma" "fact" "remark" "proof"))
      (labeled-env-list(list "proposition" "lemma" "fact" "definition"))
      (find-label (lambda(lines)((lambda(label-line)(match:substring(string-match "\\\\label\\{([^\\}]+)\\}" label-line)1))
                                   (list-ref lines(throw-if (search-list(lambda(line)(not(eq? (string-contains line"\\label")#f)))lines) #f lines)))))
      (find-ref (lambda(lines)((lambda(label-line)(if(eq? label-line #f)#f(match:substring(string-match "\\\\ref\\{([^\\}]+)\\}" label-line)1)))
                                   (query-list(lambda(line)(not(eq? (string-contains line"\\ref")#f)))lines))))
      (find-all-refs(lambda(lines)(append-map(lambda(line)(map (lambda(m)(match:substring m 1))(list-matches "\\\\ref\\{([^\\}]+)\\}" line)))lines)))
      ;;format of section-body: ((("proposition" num-line label (pf-line1 pf-line2 ...)(ref1 ref2 ...)) ... lines) ...) TODO
      (env:get-number (lambda(env)((lambda(num)(format #f "~d.~d"(car num)(cadr num)))(cadar env))))
      (env:get-section-number (lambda(env)((lambda(num)(car num))(cadar env))))
      (env:get-name caar)
      (env:get-head car)
      (env:get-body cdr)
      (env:get-label caddar)
      (env:get-pf (compose cdddar car))
      (env:get-refs (compose cdddar cdr car))
      (env:proof?(lambda(env)(string=?"proof"(env:get-name env))))
      (find-prop-pf(lambda(label envs)(env:get-body (query-list (lambda(env)(and(env:proof? env)(let((res(find-ref (env:get-body env))))(and (not(eq? res #f))(string=? label res)))))envs))))
      (parse-section(lambda(sec) (let*((c-v(make-variable 0))
                                           (raw(sec:get-body sec))
                                       (envs(split-array (lambda(l)(member(parse-environment-begin l)env-list)) parse-environment-begin raw))
                                       (envs(map(lambda(env)(cons(list(car env)(if(member(car env)numbered-env-list)(begin(inc-var c-v)(list(sec:get-number sec)(variable-ref c-v)))'()))(cdr env)))envs))
                                       (envs(map(lambda(env)(cons(car env)(list-head(cdr env)(search-list(lambda(l)(not(eq? #f(string-match(format #f"\\\\end\\{~a\\}"(caar env))l))))(cdr env)))))envs))
                                       (envs(map(lambda(env)(cons(append(car env)(list (if(member(env:get-name env)labeled-env-list)(find-label(cdr env))'())))(cdr env)))envs))
                                       ;;TODO: match proof with environment
                                       (envs(letrec((iter (lambda (pro unpro)(cond
                                                                                ((null? unpro)pro)
                                                                                ((string=?(env:get-name(car unpro))"lemma")
                                                                                   (let ((l(car unpro))(pf(query-list env:proof? unpro))(r(cddr unpro)))
                                                                                     (iter(append pro(list(cons(append(env:get-head l)(list(env:get-body pf)))(env:get-body l))))r)))
                                                                                ((string=?(env:get-name(car unpro))"proposition")
                                                                                 (let((p(car unpro))(pb(env:get-body(car unpro)))(pl(env:get-label(car unpro)))(ph(env:get-head(car unpro)))(r(cdr unpro))
                                                                                      )(iter(append pro(list(cons(append ph (list(find-prop-pf pl unpro)))pb)))r)))
                                                                                ((env:proof?(car unpro))(iter pro(cdr unpro)))
                                                                                (else (iter (append pro (list (let((h(env:get-head(car unpro)))(b(env:get-body(car unpro))))(cons (append h '(())) b))))
                                                                                            (cdr unpro)))))))      (iter '() envs)))
                                       (envs(map(lambda(env)(cons(append(env:get-head env)(list(append(find-all-refs(env:get-body env))(find-all-refs(env:get-pf env)))))(env:get-body env)))envs))
                                       (dum(map(lambda(env)(cons(list-set!(env:get-head env) 4(delete-duplicates(env:get-refs env)string=?))(env:get-body env)))envs))
                                       )(cons (sec:get-head sec)envs))))
      (envs(append-map (compose  parse-section sec:get-body) sections))
      (envs(filter(lambda(env)(member(env:get-name env)labeled-env-list))envs))
      (print-env(lambda(env)(begin(verbatim(format #f "~a ~a, label: ~a" (env:get-name env)(env:get-number env)(env:get-label env) ))(map verbatim(env:get-body env))(verbatim "  proof: ")
                              (map verbatim (env:get-pf env))(verbatim "  refs:")(map verbatim (env:get-refs env)))))
      ;;functions for printing graphviz
      (dot2tex:wrap (lambda(scale proc)(begin
                                   (format #t "\\begin{dot2tex}[scale=~a]~%digraph G{~%node[shape=\"box\"]~%splines=line;~%" scale)
                                   (proc)
                                   (format #t "}~%\\end{dot2tex}~%"))))
      (dot2tex:print-label (lambda(env)(format #f "~a ~a"
                                               (get-value '(("lemma" "Lem.")("proposition" "Prop.")("definition" "Def.")("fact" "Fact"))(env:get-name env) "bad-val" string=?)
                                               (env:get-number env))))
      (dot2tex:missed-ref-name "paper 1")
      (dot2tex:print-dependents(lambda(env envs)(let*((refs(env:get-refs env))
                                                      (name(dot2tex:print-label env))
                                                      (refs(if(string=? "proposition"(env:get-name env))(cdr refs)refs ))
                                                 (refs (map(lambda(ref)(query-list (lambda(env1)(string=? ref(env:get-label env1)))envs))refs))
                                                 (refs (map(lambda(ref)(if(eq? ref #f)dot2tex:missed-ref-name (dot2tex:print-label ref)))refs))
                                                 ;(refs(filter (lambda(ref)(not(string=? ref name)))refs))
                                                 (refs(delete-duplicates refs string=?))
                                                 )(map(lambda(item)(format #t "\"~a\" -> \"~a\"~%" item name ))refs))))
  ;)(texwrap(lambda()(map verbatim preamble))))
  )(texwrap(lambda()(dot2tex:wrap "0.2" (lambda()(begin
                                            ;(map(lambda(env)(format #t "\"~a\";~%"(dot2tex:print-label env)))envs)
                                            (map (lambda(secnum)(begin
                                                                  (format #t "subgraph cluster_~d {~%" (- secnum start-count))
                                                                  (format #t "label=\"Section ~d\";~%" secnum)
                                                                  (map (lambda(env)(format #t "\"~a\";~%"(dot2tex:print-label env)))(filter (lambda(env)(eq? (env:get-section-number env) secnum))envs))
                                                                  (format #t "}~%")
                                                                  )) (seq start-count (+ start-count (length sections))))
                                            (format #t "\"~a\";~%" dot2tex:missed-ref-name)
                                            (map (lambda(env)(dot2tex:print-dependents env envs)) envs)
                                            ))))preamble))
  ;)(texwrap(lambda()(map(compose env:get-refs  verbatim) envs))))
  ;)(texwrap(lambda()(print-env (query-list(lambda(env)(string=? (env:get-number env) "10.5")) envs)))))
  ;)(texwrap(lambda()(print-env(list-ref envs(random(length envs))))))) ;test

  ;;50 environments
  
  ;print nodes
  ;print edges
  ;divide modules --> send to K
;DONE
  ;print statements

;;\begin{dot2tex}[]//fdp
;;  digraph G {
;;      node [shape="box"]
;;      splines=line;
;;		subgraph cluster_0 {
;;			label="Section C19.5 (``Spherical multiple'')"; 
;;            "Lem. 20.9"; "Lem. 20.8"; "Prop. 20.4"; "Lem. 20.10";"Prop. 20.6"
;;		}
;;		subgraph cluster_1 {
;;			label="Section A5 (``Some integral formul\ae'')"; 
;;            "Prop. 6.4";
;;		} 
;;      "Lem. 19.3" -> "Prop. 20.4"
;;      "Lem. 19.8" ->  "Prop. 20.4"
;;      "Lem. 20.8" ->  "Prop. 20.4"
;;      "Lem. 20.9" ->  "Prop. 20.4"
;;      "Lem. 20.10" ->  "Prop. 20.4"
;;      "Prop. 20.4" ->  "Prop. 20.6"
;;      "Prop. 6.4" ->  "Prop. 20.6"
;;    }
;;\end{dot2tex}
