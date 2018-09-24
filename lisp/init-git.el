(use-package magit
    :ensure t
    :commands (magit-status magit-init)
    :init
    :general
    (my/leader-keys
     "gc"  'magit-clone
     "gff" 'magit-find-file
     "gfl" 'magit-log-buffer-file
     "gfd" 'magit-diff-buffer-file-popup
     "gi"  'magit-init
     "gL"  'magit-list-repositories
     "gm"  'magit-dispatch-popup
     "gs"  'magit-status
     "gS"  'magit-stage-file
     "gU"  'magit-unstage-file))

(use-package evil-magit
    :ensure t
    :after magit)
(provide 'init-git)
