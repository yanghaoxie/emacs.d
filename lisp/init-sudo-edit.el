(use-package sudo-edit
  :ensure t
  :commands (sudo-edit)
  :init
  (progn
    (my/leader-keys
     "fe" 'sudo-edit)))
(provide 'init-sudo-edit)
