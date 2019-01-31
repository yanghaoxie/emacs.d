(use-package winum
  :ensure t
  :init
  (setq winum-auto-assign-0-to-minibuffer nil
        winum-auto-setup-mode-line nil
        winum-mode-line-position 1
        winum-ignored-buffers '(" *which-key*" "*helm M-x*" "*helm find files*" "*helm mini*" "*Helm Swoop*")
	winum-scope 'visible
	winum-reverse-frame-list t)
  (winum-mode)
  :general
  (:states '(insert normal visual motion)
   :keymaps 'override
   "M-1" 'winum-select-window-1
   "M-2" 'winum-select-window-2
   "M-3" 'winum-select-window-3
   "M-4" 'winum-select-window-4
   "M-5" 'winum-select-window-5
   "M-6" 'winum-select-window-6
   "M-7" 'winum-select-window-7
   "M-8" 'winum-select-window-8
   "M-9" 'winum-select-window-9
   )
  )
(provide 'init-winum)
