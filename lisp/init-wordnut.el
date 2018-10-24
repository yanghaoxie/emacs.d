(use-package wordnut
  :ensure t
  :init
  (progn
    (my/leader-keys
      "aw" 'wordnut-search)
    (my/normal-keys
      :keymaps 'wordnut-mode-map
      "q" 'quit-window)))
(provide 'init-wordnut)
