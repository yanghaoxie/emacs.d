(use-package flyspell
  :defer t
  :diminish flyspell-mode
  :init
  (my/leader-keys
    "tS" 'my/toggle-flyspell
    "Sb" 'flyspell-buffer
    "Sn" 'flyspell-goto-next-error)
  :config
  (progn
    (add-hook 'prog-mode-hook #'flyspell-prog-mode)
    (add-hook 'text-mode-hook #'turn-on-flyspell)
    (add-hook 'org-mode-hook #'turn-on-flyspell)))

(use-package flyspell-correct
  :ensure t
  )

(use-package flyspell-correct-ivy
  :ensure t
  :commands (flyspell-correct-ivy)
  :general
  (:keymaps 'override
     "C-;" 'flyspell-correct-wrapper)
  )
(provide 'init-flyspell)
