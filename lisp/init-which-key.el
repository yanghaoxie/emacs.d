(use-package which-key
    :ensure t
    :diminish which-key-mode
    :init
    (which-key-mode)
    :config
    (progn
      (setq which-key-idle-delay 0.4
            which-key-idle-secondary-delay 0
	          which-key-sort-order 'which-key-key-order-alpha)
      (my/leader-keys
(provide 'init-which-key)
