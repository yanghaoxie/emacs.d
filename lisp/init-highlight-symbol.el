(use-package highlight-symbol
  :ensure t
  :diminish highlight-symbol-mode
  :init
  :general
  ("M-n" 'highlight-symbol-next
   "M-p" 'highlight-symbol-prev
   "M-'" 'highlight-symbol-query-replace)
  :config
  (setq highlight-symbol-idle-delay 0.5))
(provide 'init-highlight-symbol)
