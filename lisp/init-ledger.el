(use-package ledger-mode
  :ensure t)

(use-package evil-ledger
  :ensure t
  :diminish evil-ledger-mode
  :after ledger-mode
  :config
  (setq evil-ledger-sort-key "S")
  (add-hook 'ledger-mode-hook #'evil-ledger-mode))
(provide 'init-ledger)
