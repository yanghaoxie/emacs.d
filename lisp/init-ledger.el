(use-package ledger-mode
  :ensure t
  :defer t
  :mode ("\\.\\(ledger\\|ldg\\)\\'" . ledger-mode)
  :init
  (progn
    (setq ledger-post-amount-alignment-column 62)
    (my/leader-keys-major-mode
      :keymaps 'ledger-mode-map
      "hd" 'ledger-delete-current-transaction
      "a" 'ledger-add-transaction
      "b" 'ledger-post-edit-amount
      "c" 'ledger-toggle-current
      "C" 'ledger-mode-clean-buffer
      "l" 'ledger-display-ledger-stats
      "p" 'ledger-display-balance-at-point
      "q" 'ledger-post-align-xact
      "r" 'ledger-reconcile
      "R" 'ledger-report
      "t" 'ledger-insert-effective-date)
    (my/leader-keys-major-mode
      :keymaps 'ledger-reconcile-mode-map
      "a" 'ledger-reconcile-add
      "q" 'ledger-reconcile-quit
      "t" 'ledger-reconcile-change-target
      "RET" 'ledger-reconcile-finish)))

(use-package evil-ledger
  :ensure t
  :diminish evil-ledger-mode
  :after ledger-mode
  :config
  (setq evil-ledger-sort-key "S")
  (add-hook 'ledger-mode-hook #'evil-ledger-mode))

(use-package flycheck-ledger
  :ensure t
  :after (ledger flycheck))
(provide 'init-ledger)
