(require 'reftex)
(setq reftex-default-bibliography '("~/Dropbox/software/Zotero/bibtex/main.bib"))
(setq helm-bibtex-bibliography '("~/Dropbox/software/Zotero/bibtex/main.bib"))
(add-hook 'LaTeX-mode-hook 'turn-on-reftex) ; with AUCTeX LaTeX mode
(add-hook 'latex-mode-hook 'turn-on-reftex) ; with Emacs latex mode
(provide 'init-reftex)
