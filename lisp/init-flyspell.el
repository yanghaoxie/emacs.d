(add-hook 'LaTeX-mode-hook #'flyspell-mode)
(add-hook 'org-mode-hook #'flyspell-mode)
(global-set-key (kbd "C-<f8>") 'flyspell-mode)
(provide 'init-flyspell)
