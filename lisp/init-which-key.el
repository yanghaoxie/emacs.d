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
     "ao" '(:ignore t :which-key "org")
     "aof" '(:ignore t :which-key "feed")
     "aok" '(:ignore t :which-key "clock")
     "b" '(:ignore t :which-key "buffers")
     "c" '(:ignore t :which-key "comments")
     "C" '(:ignore t :which-key "Capture")
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
    ;; org-mode
    (my/leader-keys-major-mode
     :keymaps 'org-mode-map
     "b" '(:ignore t :which-key "babel")
     "C" '(:ignore t :which-key "Clocks")
     "d" '(:ignore t :which-key "dates")
     "e" '(:ignore t :which-key "export")
     "f" '(:ignore t :which-key "feeds")
     "i" '(:ignore t :which-key "insert")
     "iD" '(:ignore t :which-key "download")
     "s" '(:ignore t :which-key "trees/subtrees")
     "T" '(:ignore t :which-key "toggles")
     "t" '(:ignore t :which-key "tables")
     "td" '(:ignore t :which-key "delete")
     "ti" '(:ignore t :which-key "insert")
     "tt" '(:ignore t :which-key "toggle")
     "x" '(:ignore t :which-key "text"))
     ))
(provide 'init-which-key)
