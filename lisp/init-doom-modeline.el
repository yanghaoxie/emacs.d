(use-package doom-modeline
  :ensure t
  :defer t
  :config
  (setq doom-modeline-buffer-file-name-style 'file-name
	doom-modeline-height 12
	doom-modeline-bar-width 1)
  :hook (after-init . doom-modeline-init))
(provide 'init-doom-modeline)
