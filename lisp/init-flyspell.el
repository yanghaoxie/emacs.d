(use-package flyspell
  :defer t
  :diminish flyspell-mode
  :init
  (my/leader-keys
    "tS" 'my/toggle-flyspell))

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
