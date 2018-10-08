(use-package ace-window
  :ensure t
  :init
  (my/leader-keys
    "wM" 'ace-swap-window))
(provide 'init-ace-window)
