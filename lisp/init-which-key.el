(use-package which-key
  :ensure t
  :diminish which-key-mode
  :init
  (which-key-mode)
  :config
  (progn
    (setq which-key-idle-delay 0.4
          which-key-idle-secondary-delay 0
          which-key-sort-order 'which-key-key-order-alpha)
    (my/leader-keys
     "a" '(:ignore t :which-key "applications")
     "b" '(:ignore t :which-key "buffers")
     "c" '(:ignore t :which-key "comments")
     "e" '(:ignore t :which-key "errors")
     "f" '(:ignore t :which-key "files")
     "F" '(:ignore t :which-key "Frames")
     "g" '(:ignore t :which-key "git/vc")
     "gf" '(:ignore t :which-key "files")
     "h" '(:ignore t :which-key "help")
     "j" '(:ignore t :which-key "jump")
     "p" '(:ignore t :which-key "projects")
     "ps" '(:ignore t :which-key "search")
     "q" '(:ignore t :which-key "quit")
     "r" '(:ignore t :which-key "regs/rings/replace")
     "t" '(:ignore t :which-key "toggles")
     "T" '(:ignore t :which-key "Themes")
     "w" '(:ignore t :which-key "windows")
     "x" '(:ignore t :which-key "text"))
    )
(provide 'init-which-key)
