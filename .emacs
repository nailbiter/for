;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load (expand-file-name "~/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "sbcl")
;(add-to-list ’load-path "~/.slime/") ; your SLIME directory
;(require ’slime)
;(slime-setup)
(global-set-key (kbd "M-/") 'hippie-expand)
