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

;; auto-revert
(global-auto-revert-mode 1)
;; File notifications: Emacs can use native file system notifications (like inotify on Linux or kqueue on macOS) to detect changes instantly rather than polling. To rely solely on notifications and avoid periodic polling (which can save power), you can set auto-revert-avoid-polling to t.
;(setq auto-revert-avoid-polling t)
;; Non-file buffers: By default, global auto-revert mode only affects buffers associated with files on disk. To enable auto-reverting for other buffer types where it is implemented (such as Dired buffers or the Buffer Menu), set global-auto-revert-non-file-buffers to t.
;(setq global-auto-revert-non-file-buffers t)

