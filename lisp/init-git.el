(use-package magit
    :ensure t
    :commands (magit-status magit-init)
    :init
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

(use-package magit-todos
  :ensure t
  :after magit
  :general
  (:keymaps 'magit-todos-section-map
	    "j" 'evil-next-visual-line)
  (:keymaps 'magit-status-mode-map
	    "gT" 'magit-todos-jump-to-todos)
  :config
  (magit-todos-mode 1))

(provide 'init-git)
