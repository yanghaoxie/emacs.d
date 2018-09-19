(use-package which-key
    :ensure t
    :diminish which-key-mode
    :init
    (which-key-mode)
    :config
    (setq which-key-idle-delay 0.4
          which-key-idle-secondary-delay 0
	        which-key-sort-order 'which-key-key-order-alpha))
(provide 'init-which-key)
