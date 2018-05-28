(require 'whitespace)
(add-hook 'prog-mode-hook 'whitespace-mode)
(setq whitespace-line-column 80)
(setq fill-column 80)
(setq whitespace-style '(face lines-tail))
(set-face-attribute 'whitespace-line nil
		    :background "gray98"
		    :foreground "violet")
(provide 'init-whitespace-mode)
