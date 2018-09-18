(use-package window-numbering
  :ensure t
  :config
  (window-numbering-mode)
  :general
  (:states '(normal insert visual)
   :keymaps 'override
   "M-1" 'select-window-1
   "M-2" 'select-window-2
   "M-3" 'select-window-3
   "M-4" 'select-window-4
   "M-5" 'select-window-5
))
(provide 'init-window-numbering)
