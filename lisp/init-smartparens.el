(use-package smartparens
  :ensure t
  :defer t
  :diminish smartparens-mode
  :init
  (progn
    (smartparens-global-mode t)
    (smartparens-global-strict-mode t))
  :config
  (my/leader-keys
    "k{" 'sp-wrap-curly
    "k(" 'sp-wrap-round
    "k[" 'sp-wrap-square
    "ku" 'sp-unwrap-sexp
    "kr" 'sp-rewrap-sexp)
  (my/all-states-keys
    :prefix "M-s"
    ;; navigation
    "f" 'sp-forward-sexp
    "b" 'sp-backward-sexp
    "d" 'sp-down-sexp
    "M-d" 'sp-backward-down-sexp
    "u" 'sp-up-sexp
    "M-u" 'sp-backward-up-sexp
    "n" 'sp-next-sexp
    "p" 'sp-previous-sexp
    "a" 'sp-beginning-of-sexp
    "e" 'sp-end-of-sexp
    ;; slurp and barf
    "l" 'sp-forward-slurp-sexp
    "h" 'sp-backward-slurp-sexp
    "M-l" 'sp-forward-barf-sexp
    "M-h" 'sp-backward-barf-sexp
    ;; killing
    "k" 'sp-kill-sexp
    "M-k" 'sp-backward-kill-sexp))

(use-package evil-smartparens
  :ensure t
  :defer t
  :diminish evil-smartparens-mode
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))
(provide 'init-smartparens)
