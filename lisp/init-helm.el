(require 'helm-config)
(helm-mode t)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-xopen
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t);; fuzzy matching for helm-mini
(helm-autoresize-mode t)
;; key binding
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(provide 'init-helm)
