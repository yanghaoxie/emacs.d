(use-package projectile
    :ensure t
    :diminish projectile-mode
    :commands (projectile-ack
               projectile-ag
               projectile-compile-project
               projectile-dired
               projectile-find-dir
               projectile-find-file
               projectile-find-tag
               projectile-test-project
               projectile-grep
               projectile-invalidate-cache
               projectile-kill-buffers
               projectile-multi-occur
               projectile-project-p
               projectile-project-root
               projectile-recentf
               projectile-regenerate-tags
               projectile-replace
               projectile-replace-regexp
               projectile-run-async-shell-command-in-root
               projectile-run-shell-command-in-root
               projectile-switch-project
               projectile-switch-to-buffer
               projectile-vc)
    :general
    (my/leader-keys
     ;; Project
     "p!" 'projectile-run-shell-command-in-root
     "p&" 'projectile-run-async-shell-command-in-root
     "p%" 'projectile-replace-regexp
     "pa" 'projectile-toggle-between-implementation-and-test
     "pb" 'projectile-switch-to-buffer
     "pc" 'projectile-compile-project
     "pd" 'projectile-find-dir
     "pD" 'projectile-dired
     "pe" 'projectile-edit-dir-locals
     "pf" 'projectile-find-file
     "pF" 'projectile-find-file-dwim
     "pg" 'projectile-find-tag
     "pG" 'projectile-regenerate-tags
     "pI" 'projectile-invalidate-cache
     "pk" 'projectile-kill-buffers
     "pp" 'projectile-switch-project
     "pr" 'projectile-recentf
     "pR" 'projectile-replace
     "pT" 'projectile-test-project
     "pv" 'projectile-vc)
    :config
    (progn
      (projectile-mode)))

(use-package counsel-projectile
    :ensure t
    :defer t
    :init
    (my/leader-keys
     "p SPC" 'counsel-projectile
     "pf" 'counsel-projectile-find-file
     "pb" 'counsel-projectile-switch-to-buffer
     "pd" 'counsel-projectile-find-dir
     "pp" 'counsel-projectile-switch-project
     "psg" 'counsel-projectile-grep
     "pss" 'counsel-projectile-ag
     "psr" 'counsel-projectile-rg)
    :config
    (counsel-projectile-mode))
(provide 'init-project)
