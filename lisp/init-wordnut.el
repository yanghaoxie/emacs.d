(use-package wordnut
  :ensure t
  :defer t
  :init
  (progn
    (my/leader-keys
      "a M-w" 'wordnut-search)
    (my/normal-keys
      :keymaps 'wordnut-mode-map
      "q" 'quit-window)))
(provide 'init-wordnut)
