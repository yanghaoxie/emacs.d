(use-package magit
    :ensure t
    :commands (magit-status magit-init)
    :general
    (:keymaps 'magit-mode-map
	      "0" nil
	      "1" nil
	      "2" nil
	      "3" nil
	      "4" nil)
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
     "gU"  'magit-unstage-file)
    (add-hook 'magit-popup-mode-hook (lambda () (display-line-numbers-mode -1)))
    (add-hook 'magit-status-mode-hook (lambda () (display-line-numbers-mode 1))))

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
