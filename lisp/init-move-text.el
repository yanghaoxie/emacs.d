(use-package move-text
  :ensure t
  :defer t
  :init
  (my/leader-keys
    "xJ" 'move-text-down
    "xK" 'move-text-up))
(provide 'init-move-text)
