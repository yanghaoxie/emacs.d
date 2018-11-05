(use-package flycheck
  :ensure t
  :defer t
  :init
  (my/leader-keys
    "ts" 'my/toggle-syntax-checking)
  :config
  (my/leader-keys
    "eb" 'flycheck-buffer
    "ec" 'flycheck-clear
    "eh" 'flycheck-describe-checker
    "es" 'flycheck-select-checker
    "eS" 'flycheck-set-checker-executable
    "ev" 'flycheck-verify-setup
    "ey" 'flycheck-copy-errors-as-kill
    "ex" 'flycheck-explain-error-at-point
    ;; navigation
    "en" 'flycheck-next-error
    "ep" 'flycheck-previous-error
    "el" 'flycheck-list-errors))

(use-package flycheck-posframe
  :ensure t
  :after flycheck
  :config (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))
(provide 'init-flycheck)
