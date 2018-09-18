(use-package expand-region
    :ensure t
    :init
    (my/leader-keys
     "v" 'er/expand-region)
    :config
    (progn
      (setq expand-region-contract-fast-key "V"
            expand-region-reset-fast-key "r")))
(provide 'init-expand-region)
