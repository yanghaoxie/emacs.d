(use-package restart-emacs
    :ensure t
    :init
    (setq restart-emacs-restore-frame t)
    :general
    (my/leader-keys
     "qr" 'restart-emacs))
(provide 'init-restart-emacs)
