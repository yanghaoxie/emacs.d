(use-package paradox
  :ensure t
  :commands (paradox-list-packages)
  :init
  (progn
    (my/leader-keys
     "ak" 'paradox-list-packages)))
(provide 'init-paradox)
