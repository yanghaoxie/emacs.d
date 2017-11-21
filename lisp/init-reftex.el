(require 'reftex)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(provide 'init-reftex)
