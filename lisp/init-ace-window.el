(use-package ace-window
  :ensure t
  :init
  (my/leader-keys
    "wM" 'ace-swap-window
    "wW" 'ace-window)
  :config
  (progn
    (setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))))
(provide 'init-ace-window)
