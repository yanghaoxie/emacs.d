(use-package rainbow-mode
  :ensure t
  :commands rainbow-mode
  :init
  (my/leader-keys
    "tc" 'rainbow-mode))

(provide 'init-rainbow-delimiters)
