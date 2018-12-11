(use-package imenu-list
  :ensure t
  :init
  (progn
    (setq imenu-list-focus-after-activation t
	  imenu-list-auto-resize t)
    (my/leader-keys
      "bi" 'imenu-list-smart-toggle))
  :config
  (my/normal-keys
    :keymaps 'imenu-list-major-mode-map
    "d" 'imenu-list-display-entry
    "r" 'imenu-list-refresh))

(provide 'init-imenu-list)
