(use-package flycheck
    :ensure t
    :general
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
     "el" 'flycheck-list-errors
     ;; toggle
     "ts" 'my/toggle-syntax-checking)
    )

(use-package flycheck-posframe
    :ensure t
    :after flycheck
    :config (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode))
(provide 'init-flycheck)
