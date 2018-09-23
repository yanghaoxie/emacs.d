(use-package flyspell
  :defer t
  :diminish flyspell-mode
  :init
  (progn
    (add-hook 'text-mode-hook 'flyspell-mode)
    (add-hook 'prog-mode-hook 'flyspell-prog-mode)))

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
