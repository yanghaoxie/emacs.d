(use-package smartparens
  :ensure t
  :diminish smartparens-mode
  :config
  (smartparens-global-mode 1)
  (smartparens-global-strict-mode 1))

(use-package evil-smartparens
  :ensure t
  :diminish evil-smartparens-mode
  :hook smartparens-enabled-hook)
(provide 'init-smartparens)
