(use-package ace-link
  :ensure t
  :init
  (progn
      (with-eval-after-load 'info
        (define-key Info-mode-map "o" 'ace-link-info))
      (with-eval-after-load 'help-mode
        (define-key help-mode-map "o" 'ace-link-help))
      (with-eval-after-load 'eww
        (define-key eww-link-keymap "o" 'ace-link-eww)
        (define-key eww-mode-map "o" 'ace-link-eww))))
(provide 'init-ace-link)
