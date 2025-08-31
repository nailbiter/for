(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7"
     default))
 '(epg-gpg-program "/usr/local/bin/gpg")
 '(package-selected-packages
   '(## dockerfile-mode dracula-theme drag-stuff elisa go-mode
	haskell-mode indent-tools js-format json-mode json-reformat
	markdown-mode pass password-store password-store-otp
	prettier-js python-black slime slime-volleyball use-package
	whole-line-or-region yaml yaml-mode))
 '(prettier-js-command "/usr/local/bin/prettier"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;(setq inferior-lisp-program "/Users/nailbiter/Documents/forgithub/ccl-dev/dx86cl64")
					;(setq inferior-lisp-program "sbcl")

(setq inferior-lisp-program "/usr/local/bin/sbcl")

(require 'package)
(add-to-list 'package-archives
					;'("melpa-stable" . "https://stable.melpa.org/packages/")
	     '("gnu" . "https://elpa.gnu.org/packages/")
	     '("melpa" . "https://melpa.org/packages/")
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
;(setq drag-stuff-modifier '(control shift))
;(define-key drag-stuff-mode-map (drag-stuff--kbd 'up) 'drag-stuff-up)
;(define-key drag-stuff-mode-map (drag-stuff--kbd 'down) 'drag-stuff-down)
(define-key drag-stuff-mode-map (kbd "<ESC> <up>") 'drag-stuff-up)
(define-key drag-stuff-mode-map (kbd "<ESC> <down>") 'drag-stuff-down)

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
;(setq python-black-command "python3 -m black")
(setq python-black-command "/usr/local/anaconda3/bin/black")

;; python init
(defun python-init (template)
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

;; renaming frames
(load "~/.emacs.d/frame-fns.el")
(load "~/.emacs.d/frame-cmds.el")

;; json5
;; (load "~/.emacs.d/lisp/json5.el")
;; (add-to-list 'load-path "~/.emacs.d/lisp/")
;;(use-package json5)
;;(require 'json5)
;; ;; python init
;; (defun json5- (template)
;;   (interactive "Mtemplate: ")
;;   (progn
;;     (shell-command (format "~/for/forpython/new_file.py new-file --no-silent \"%s\" \"%s\"" buffer-file-name template) nil nil)
;;     (revert-buffer :ignore-auto :noconfirm)))

;; https://www.emacswiki.org/emacs/ExecPath(
(setenv "PATH" (concat (getenv "PATH") ":/usr/local/bin:/Users/nailbiter/for/forpython/miscutils/"))
;;(setq exec-path (append exec-path '("/usr/local/bin/" "/Users/nailbiter/for/forpython/miscutils/")))

;; js https://github.com/futurist/js-format.el
;;(require 'js-format)
;; using "standard" as js formatter
(require 'prettier-js)
;; use command `prettier-js` to prettify the buffer

;; (after-load 'js2-mode
;;   (add-hook 'js2-mode-hook
;;             (lambda()
;;               (js-format-setup "standard"))))

(setq require-final-newline t)

(require 'whole-line-or-region)
(whole-line-or-region-global-mode)

(require 'yaml-mode)

;; extensions handling
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.json5\\'" . js-mode))

(setq display-buffer-base-action '(display-buffer-in-tab))
(setq markdown-command "/usr/local/bin/multimarkdown")

;; tree sitter (for folding)
;; need `brew install tree-sitter tree-sitter-langs`
;; python-ts-mode (in emacs)
;; (require 'tree-sitter)

;; (global-tree-sitter-mode)
;; (require 'tree-sitter-langs)
;; (add-hook 'python-mode-hook #'tree-sitter-hl-mode)

;; (tree-sitter-require 'python)

;; loading local tweaks
;; Load local settings if the file exists
(let ((local-settings-file (expand-file-name "~/.emacs.d/local.el")))
  (when (file-exists-p local-settings-file)
    (load-file local-settings-file)))
;; (message "Loading WORK local settings...")
;; (setq gemini-python-interpreter "/path/to/your/work/python")
;; ;; You can add other work-specific settings here
;; ;; e.g., (setq some-other-variable 'work-value)

;; https://nailbiter91.atlassian.net/browse/ML3-2695
(defun gemini ()
  "Run a Python script with the current buffer's content as stdin
and a user-provided prompt as a command-line argument.
Displays the output in a new buffer.
Uses the Python interpreter specified in 'gemini-python-interpreter'."
  (interactive)
  (let* ((user-prompt (read-string "Enter Prompt: ")) ; Prompt the user
         (current-buffer-content (buffer-substring-no-properties (point-min) (point-max)))
         (python-script-path (expand-file-name "~/for/forpython/gemini-emacs.py"))
         (output-buffer-name "*gemini-output*")
         (process-connection-type nil)
         (process-environment process-environment))

    ;; Ensure the output buffer is fresh each time
    (when (get-buffer output-buffer-name)
      (kill-buffer output-buffer-name))

    ;; Run the Python script
    (with-temp-buffer
      (insert current-buffer-content) ; Put buffer content into temp buffer for stdin
      (apply #'call-process-region
             (point-min) (point-max) ; Region for stdin
             gemini-python-interpreter ; Program to run
             nil ; Don't delete region
             output-buffer-name ; Output to this buffer
             nil ; Don't display output buffer yet
             ;; Arguments to the Python interpreter: script_path and user_prompt
             (list python-script-path "-p" user-prompt)))

    ;; Display the output buffer
    (if (get-buffer output-buffer-name)
        (progn
          (display-buffer output-buffer-name)
          (with-current-buffer output-buffer-name
            (goto-char (point-min))
            (message "Python script output displayed in %s (Prompt: \"%s\")"
                     output-buffer-name user-prompt)))
      (message "Error: Python script did not produce output or an error occurred."))))

;; Optional keybinding
;; (global-set-key (kbd "C-c g") 'gemini)


(add-to-list 'load-path "~/.emacs.d/included-packages")
(require 'wrap-region)
;(wrap-region-mode t)
(wrap-region-global-mode 1)
