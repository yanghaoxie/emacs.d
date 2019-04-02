(use-package easy-kill
  :ensure t
  :config
  (progn
    (global-set-key [remap kill-ring-save] 'easy-kill)))

(provide 'init-easy-kill)
