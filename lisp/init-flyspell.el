(use-package flyspell
  :defer t
  :diminish flyspell-mode
  :init
  (my/leader-keys
    "t M-s" 'my/toggle-flyspell
    "M-s b" 'flyspell-buffer
    "M-s n" 'flyspell-goto-next-error
    "M-s p" 'flyspell-correct-at-point)
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
