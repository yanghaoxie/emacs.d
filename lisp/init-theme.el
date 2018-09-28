(use-package darktooth-theme
    :ensure t
    :init
    (load-theme 'darktooth t))

(use-package spacemacs-theme
  :ensure t
  :defer t
  )

;;;###autoload
(defun my/switch-theme ()
  (interactive)
  (my/toggle-next-theme 'darktooth 'spacemacs-light))

(my/leader-keys
  "Tn" 'my/switch-theme)
(provide 'init-theme)
