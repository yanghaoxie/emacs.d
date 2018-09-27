(use-package highlight-numbers
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'highlight-numbers-mode)
  :config)
(provide 'init-highlight-numbers)
