(use-package artbollocks-mode
  :ensure t
  :diminish artbollocks-mode
  :defer t
  :init
  (add-hook 'org-mode-hook 'artbollocks-mode)
  (add-hook 'LaTeX-mode-hook 'artbollocks-mode)
  :config
  (setq artbollocks-jargon nil
	artbollocks-passive-voice nil))
(provide 'init-artbollocks)
