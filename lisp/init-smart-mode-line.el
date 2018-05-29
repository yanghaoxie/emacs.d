(setq sml/theme 'light)
(setq sml/no-confirm-load-theme 1)
(sml/setup)
(setq
 sml/shorten-directory t
 sml/shorten-modes t
 sml/name-width 40
 sml/mode-width 'full
 )
(add-to-list 'sml/replacer-regexp-list '("^~/Dropbox/software/Zotero/storage/" ":ZO:"))
(set-face-attribute 'sml/filename nil
		    :foreground "black"
		    )
(provide 'init-smart-mode-line)
