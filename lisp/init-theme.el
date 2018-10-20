(use-package gruvbox-theme
  :ensure t
  :defer t
  :init
  (load-theme 'gruvbox-light-soft t)
  )
;;;###autoload
(defun my/switch-theme ()
  (interactive)
  (my/toggle-next-theme 'gruvbox-dark-soft 'gruvbox-light-soft))

(my/leader-keys
  "Tn" 'my/switch-theme)

(provide 'init-theme)
