(use-package doom-modeline
  :ensure t
  :defer t
  :config
  (setq doom-modeline-buffer-file-name-style 'file-name)
  :hook (after-init . doom-modeline-init))
(provide 'init-doom-modeline)
