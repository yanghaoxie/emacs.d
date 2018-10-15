(use-package shell-pop
  :ensure t
  :defer t
  :commands shell-pop
  :init
  (setq shell-pop-shell-type (quote ("eshell" "*eshell*" (lambda nil (eshell shell-pop-term-shell))))
	shell-pop-full-span t
	)
  (my/leader-keys
    "'" 'shell-pop
    "as" 'eshell))
(provide 'init-shell)
