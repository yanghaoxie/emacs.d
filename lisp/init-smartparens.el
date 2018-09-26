(use-package smartparens
  :ensure t
  :defer t
  :diminish smartparens-mode
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
    (add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode))
  :config
  (smartparens-global-mode 1)
  (smartparens-global-strict-mode 1))

(use-package evil-smartparens
  :ensure t
  :diminish evil-smartparens-mode
  :hook smartparens-enabled-hook)
(provide 'init-smartparens)
