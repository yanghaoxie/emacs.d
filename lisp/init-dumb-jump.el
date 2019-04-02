(use-package dumb-jump
  :ensure t
  :init
  (my/all-states-keys
    "M-g o" 'dumb-jump-go-other-window
    "M-g g" 'dumb-jump-go
    "M-g l" 'dumb-jump-quick-look
    "M-g x" 'dumb-jump-go-prefer-external
    "M-g z" 'dumb-jump-go-prefer-external-other-window)
  :config
  (progn
    (setq dumb-jump-selector 'helm)))

(provide 'init-dumb-jump)
