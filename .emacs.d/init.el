;;; --- 1. CORE PATH & ENVIRONMENT SETUP ---
;; This ensures all your Homebrew tools (GPG, SBCL, etc.) are found on M-series Macs
(let ((my-paths '("/opt/homebrew/bin" 
                  "/usr/local/bin" 
                  "/Users/nailbiter/for/forpython/miscutils/")))
  (setenv "PATH" (mapconcat 'identity my-paths ":"))
  (setq exec-path (append my-paths exec-path)))

;;; --- 2. CUSTOM SET VARIABLES ---
(custom-set-variables
 '(custom-safe-themes
   '("fe1c13d75398b1c8fd7fdd1241a55c286b86c3e4ce513c4292d01383de152cb7" default))
 '(epg-gpg-program "/opt/homebrew/bin/gpg") ; Updated for M-series
 '(package-selected-packages
   '(dockerfile-mode dracula-theme drag-stuff elisa git-modes go-mode
     haskell-mode indent-tools js-format json-mode json-reformat
     markdown-mode pass password-store password-store-otp
     prettier-js python-black slime slime-volleyball use-package
     whole-line-or-region yaml yaml-mode))
 '(prettier-js-command "/opt/homebrew/bin/prettier")) ; Updated for M-series

(custom-set-faces)

;;; --- 3. PACKAGE REPOSITORY SETUP ---
(require 'package)
(setq package-archives
      '(("gnu"    . "https://elpa.gnu.org/packages/")
        ("nongnu" . "https://elpa.nongnu.org/nongnu/")
        ("melpa"  . "https://melpa.org/packages/")))

(package-initialize)

;; Bootstrap use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t) ; This simplifies the blocks below

;;; --- 4. THEME & VISUALS ---
(use-package dracula-theme
  :ensure t
  :config
  (load-theme 'dracula t))

(show-paren-mode 1)
(global-display-line-numbers-mode)

;;; --- 5. EDITOR TOOLS (DRAG-STUFF, WRAP, ETC) ---
(use-package drag-stuff
  :ensure t
  :bind (("<ESC> <up>" . drag-stuff-up)
         ("<ESC> <down>" . drag-stuff-down))
  :config
  (drag-stuff-global-mode 1))

(use-package whole-line-or-region
  :ensure t
  :config
  (whole-line-or-region-global-mode 1))

(use-package wrap-region
  :ensure t
  :config
  (wrap-region-global-mode 1))

;;; --- 6. LANGUAGES & BINARIES ---
;; Updated binary paths for M-series
(setq inferior-lisp-program "/opt/homebrew/bin/sbcl")
(setq ispell-program-name "/opt/homebrew/bin/aspell")
(setq shell-file-name "/opt/homebrew/bin/fish")
(setq markdown-command "/opt/homebrew/bin/multimarkdown")
(setq epa-pinentry-mode 'loopback)

;; Yasnippet
(use-package yasnippet
  :ensure t
  :init
  (add-to-list 'load-path "~/.emacs.d/yasnippet")
  :config
  (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  (yas-global-mode 1))

;; Python & Black
(use-package python-black
  :ensure t
  :after python
  :hook (python-mode . python-black-on-save-mode-enable-dwim)
  :config
  ;; Note: check 'which black' in terminal. If using brew, use the path below.
  (setq python-black-command "/opt/homebrew/bin/black"))

;; YAML & Markdown
(use-package yaml-mode
  :ensure t
  :mode ("\\.yml\\'" . yaml-mode))

(add-to-list 'auto-mode-alist '("\\.json5\\'" . js-mode))

;;; --- 7. CUSTOM FUNCTIONS & KEYBINDINGS ---

;; Match paren
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s)") (forward-char 1) (backward-list 1))
        (t (self-insert-command (or arg 1)))))
(global-set-key "%" 'match-paren)

;; Hippie Expand
(global-set-key "\C-n" 'hippie-expand)
(global-set-key "\C-c\C-f" 'json-pretty-print-buffer-ordered)

;; pbcopy
(defun pbcopy ()
  "Copy the entire buffer content to the macOS clipboard using pbcopy."
  (interactive)
  (call-process-region (point-min) (point-max) "pbcopy")
  (message "Buffer content copied to clipboard."))

;; Python Init
(defun python-init (template)
  (interactive "Mtemplate: ")
  (progn
    (shell-command (format "~/for/forpython/new_file.py new-file --no-silent \"%s\" \"%s\"" buffer-file-name template) nil nil)
    (revert-buffer :ignore-auto :noconfirm)))

;; Gemini Integration
(defun gemini ()
  "Run a Python script with current buffer's content as stdin."
  (interactive)
  (let* ((user-prompt (read-string "Enter Prompt: "))
         (current-buffer-content (buffer-substring-no-properties (point-min) (point-max)))
         (python-script-path (expand-file-name "~/for/forpython/gemini-emacs.py"))
         (output-buffer-name "*gemini-output*")
         (process-connection-type nil)
         (gemini-python-interpreter (or (bound-and-true-p gemini-python-interpreter) "/opt/homebrew/bin/python3")))

    (when (get-buffer output-buffer-name)
      (kill-buffer output-buffer-name))

    (with-temp-buffer
      (insert current-buffer-content)
      (apply #'call-process-region
             (point-min) (point-max)
             gemini-python-interpreter
             nil output-buffer-name nil
             (list python-script-path "-p" user-prompt)))

    (if (get-buffer output-buffer-name)
        (progn
          (display-buffer output-buffer-name)
          (with-current-buffer output-buffer-name
            (goto-char (point-min))
            (message "Gemini output displayed.")))
      (message "Error: Gemini script failed."))))

;; Frame naming
(load "~/.emacs.d/frame-fns.el" t)
(load "~/.emacs.d/frame-cmds.el" t)

;; Compile command by extension
(defun my/set-compile-command-by-ext ()
  "Sets the compile-command variable based on file extension."
  (when buffer-file-name
    (let ((ext (file-name-extension buffer-file-name))
          (fname (file-name-nondirectory buffer-file-name)))
      (cond
       ((string-suffix-p ".jinja.md" fname)
        (setq-local compile-command (format "jinja %s | tee /dev/stderr | pbcopy" fname)))))))
(add-hook 'find-file-hook 'my/set-compile-command-by-ext)

;;; --- 8. LOCAL OVERRIDES ---
;; Load local settings if the file exists (e.g., for work paths)
(let ((local-settings-file (expand-file-name "~/.emacs.d/local.el")))
  (when (file-exists-p local-settings-file)
    (load-file local-settings-file)))

(setq require-final-newline t)
(setq display-buffer-base-action '(display-buffer-in-tab))