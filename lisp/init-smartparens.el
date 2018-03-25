(require 'smartparens-config)
(smartparens-global-mode 1)
;; add new pairs
(sp-pair "<" ">")
(add-hook 'prog-mode-hook #'smartparens-mode)
(add-hook 'LaTeX-mode-hook #'smartparens-mode)
(provide 'init-smartparens)
