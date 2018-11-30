(use-package crux
  :ensure t
  :config
  (progn
    (global-set-key [remap move-beginning-of-line] #'crux-move-beginning-of-line)
    (my/leader-keys
      "f M-r" 'crux-rename-file-and-buffer
      "f M-o" 'crux-open-with
      "fi" 'crux-find-user-init-file)
    (crux-with-region-or-buffer indent-region)))
(provide 'init-crux)
