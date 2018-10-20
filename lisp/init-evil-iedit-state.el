(use-package evil-iedit-state
    :commands (evil-iedit-state evil-iedit-state/iedit-mode)
    :init
    (progn
      (setq iedit-current-symbol-default t
            iedit-only-at-symbol-boundaries t
            iedit-toggle-key-default nil)
      (my/leader-keys "se" 'evil-iedit-state/iedit-mode)))
(provide 'init-evil-iedit-state)
