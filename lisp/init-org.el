(global-set-key (kbd "C-c o") 
                (lambda () (interactive) (find-file "~/Dropbox/document/org/main.org")))
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
(provide 'init-org)
