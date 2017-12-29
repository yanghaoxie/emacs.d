(require 'smartparens-config)
;; add new pairs
(sp-pair "<" ">")
(add-hook 'prog-mode-hook #'smartparens-strict-mode)
(add-hook 'LaTeX-mode-hook #'smartparens-strict-mode)
(provide 'init-smartparens)
