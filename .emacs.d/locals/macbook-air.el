;; ~/.emacs.d/local.el (WORK version)
(message "Loading HOME local settings...")
(setq gemini-python-interpreter "/usr/local/anaconda3/bin/python")
;; You can add other work-specific settings here
;; e.g., (setq some-other-variable 'work-value)

;; python
;; (add-hook 'python-mode-hook 'display-line-numbers-mode)
;; (add-hook 'python-mode-hook 'wrap-region-mode)
(defun my-python-mode-setup ()
  "Custom settings to apply when python-mode is enabled."
  (display-line-numbers-mode 1)
  (wrap-region-mode 1))

(add-hook 'python-mode-hook #'my-python-mode-setup)

(add-to-list 'display-buffer-alist
             '("\\*compilation\\*"
               (display-buffer-reuse-window display-buffer-same-window)))
