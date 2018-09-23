(use-package artbollocks-mode
  :ensure t
  :defer t
  :init
  (add-hook 'org-mode-hook 'artbollocks-mode)
  (add-hook 'LaTeX-mode-hook 'artbollocks-mode))
(provide 'init-artbollocks)
