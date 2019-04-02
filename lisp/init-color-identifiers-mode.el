(use-package color-identifiers-mode
  :ensure t
  :defer t
  :diminish color-identifiers-mode
  :init
  (my/leader-keys
    "thi" 'my/toggle-color-identifiers))
(provide 'init-color-identifiers-mode)
