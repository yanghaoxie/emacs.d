(use-package crux
  :ensure t
  :commands (crux-move-beginning-of-line
	     crux-rename-file-and-buffer
	     crux-find-user-init-file)
  :config
  (progn
    (my/all-states-keys
      "C-a" 'crux-move-beginning-of-line)
    (my/leader-keys
      "f M-r" 'crux-rename-file-and-buffer
      "f M-o" 'crux-open-with
      "fi" 'crux-find-user-init-file)
    (crux-with-region-or-buffer indent-region)))

(provide 'init-crux)
