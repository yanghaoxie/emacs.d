(use-package auto-compile
    :ensure t
    :config
    (auto-compile-on-load-mode)
    ;; (auto-compile-on-save-mode)
    (setq load-prefer-newer t
	  auto-compile-display-buffer nil
	  auto-compile-mode-line-counter t))
(provide 'init-auto-compile)
