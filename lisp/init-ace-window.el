(use-package ace-window
  :ensure t
  :init
  (my/leader-keys
    "wM" 'ace-swap-window)
  (my/all-states-keys
    "M-o" 'ace-window)
  :config
  (progn
    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))))
(provide 'init-ace-window)
