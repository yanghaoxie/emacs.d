(use-package color-identifiers-mode
  :ensure t
  :init
  (my/leader-keys
    "thi" 'my/toggle-color-identifiers))
(provide 'init-color-identifiers-mode)
