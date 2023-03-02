(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(drag-stuff dracula-theme use-package markdown-mode slime-volleyball slime)))
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
	     '("melpa-stable" . "https://stable.melpa.org/packages/"))
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
