(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(epg-gpg-program "/usr/local/bin/gpg")
 '(package-selected-packages
   '(json-mode json-reformat python-black password-store-otp password-store pass drag-stuff dracula-theme use-package markdown-mode slime-volleyball slime)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;(setq inferior-lisp-program "/Users/nailbiter/Documents/forgithub/ccl-dev/dx86cl64")
					;(setq inferior-lisp-program "sbcl")

(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq shell-file-name "bash")

(require 'package)
(add-to-list 'package-archives
	     ;'("melpa-stable" . "https://stable.melpa.org/packages/")
	     '("melpa" . "https://melpa.org/packages/")
	     t
	     )
(package-initialize)
(unless (package-installed-p 'use-package)
(package-refresh-contents)
(package-install 'use-package))

;; theme
(use-package dracula-theme
:ensure t
:config
(load-theme 'dracula t))

;; https://github.com/rejeep/drag-stuff.el/issues/33
(use-package drag-stuff)
(require 'drag-stuff)
(drag-stuff-global-mode 1)
;;(keys-stuff-define-drag)
;; copied from https://github.com/rejeep/drag-stuff.el/blob/6d06d846cd37c052d79acd0f372c13006aa7e7c8/drag-stuff.el#L332
(define-key drag-stuff-mode-map (drag-stuff--kbd 'up) 'drag-stuff-up)
(define-key drag-stuff-mode-map (drag-stuff--kbd 'down) 'drag-stuff-down)

(setq ispell-program-name "/usr/local/bin/aspell")
(setq shell-file-name "/usr/local/bin/fish")
(setq epa-pinentry-mode 'loopback)


;; hippie
(global-set-key "\C-n" 'hippie-expand)

;; python black
(use-package python-black
  :demand t
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim))
(setq python-black-command "/usr/local/anaconda3/bin/black")

;; python init
(defun init-python (template)
  (interactive "Mtemplate: ")
  (progn
    (shell-command (format "~/for/forpython/new_file.py new-file --no-silent \"%s\" \"%s\"" buffer-file-name template) nil nil)
    (revert-buffer :ignore-auto :noconfirm)))


;; https://www.gnu.org/software/emacs/manual/html_node/efaq/Matching-parentheses.html
(show-paren-mode 1)
(global-set-key "%" 'match-paren)

(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))

;; json `json-mode`

;; hippie
(global-set-key "\C-c\C-f" 'json-pretty-print-buffer-ordered)