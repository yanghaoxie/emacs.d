(use-package highlight-symbol
  :ensure t
  :diminish highlight-symbol-mode
  :init
  (my/leader-keys
    "tha" 'my/toggle-highlight-symbol)
  :general
  ("M-n" 'highlight-symbol-next
   "M-p" 'highlight-symbol-prev
   "M-'" 'highlight-symbol-query-replace)
  :config
  (setq highlight-symbol-idle-delay 0.5)
  ;; (highlight-symbol-mode 1)
  )
(provide 'init-highlight-symbol)
