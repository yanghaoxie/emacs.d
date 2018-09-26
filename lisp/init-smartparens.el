(use-package smartparens
  :ensure t
  :defer t
  :diminish smartparens-mode
  :init
  (progn
    (add-hook 'emacs-lisp-mode-hook #'smartparens-mode)
    (add-hook 'emacs-lisp-mode-hook #'smartparens-strict-mode))
  :config
  (my/leader-keys
    "k{" 'sp-wrap-curly
    "k(" 'sp-wrap-round
    "k[" 'sp-wrap-square
    "ku" 'sp-unwrap-sexp
    "kr" 'sp-rewrap-sexp))

(use-package evil-smartparens
  :ensure t
  :diminish evil-smartparens-mode
  :hook smartparens-enabled-hook)
(provide 'init-smartparens)
