(use-package ace-window
  :ensure t
  :init
  (my/leader-keys
    "wM" 'ace-swap-window)
  (my/all-states-keys
    "M-o" 'ace-window)
(provide 'init-ace-window)
