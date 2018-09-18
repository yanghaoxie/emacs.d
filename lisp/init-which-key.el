(use-package which-key
    :ensure t
    :diminish which-key-mode
    :init
    (which-key-mode)
    :config
    (setq which-key-idle-delay 0.4
          which-key-idle-secondary-delay 0))
(provide 'init-which-key)
