(use-package auto-compile
    :ensure t
    :init
    (progn
      (setq load-prefer-newer t))
    :config
    (auto-compile-on-load-mode)
    (auto-compile-on-save-mode))
(provide 'init-auto-compile)
