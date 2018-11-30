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
     "i" '(:ignore t :which-key "insert")
     "iS" '(:ignore t :which-key "auto-yas")
     "j" '(:ignore t :which-key "jump")
     "p" '(:ignore t :which-key "projects")
     "ps" '(:ignore t :which-key "search")
     "q" '(:ignore t :which-key "quit")
     "r" '(:ignore t :which-key "regs/rings/replace")
     "s" '(:ignore t :which-key "search")
     "M-s" '(:ignore t :which-key "Spell/Grammar")
     "t" '(:ignore t :which-key "toggles")
     "th" '(:ignore t :which-key "highlight")
     "T" '(:ignore t :which-key "Themes")
     "w" '(:ignore t :which-key "windows")
     "wp" '(:ignore t :which-key "popwin")
     "x" '(:ignore t :which-key "text")
     "xS" '(:ignore t :which-key "Synosaurus")
     "z" '(:ignore t :which-key "zoom"))))
(provide 'init-which-key)
