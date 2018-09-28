(use-package smartscan
  :ensure t
  :init
  :general
  ("M-n" 'smartscan-symbol-go-forward
   "M-p" 'smartscan-symbol-go-backward
   "M-'" 'smartscan-symbol-replace)
  :config
  (smartscan-mode 1))
(provide 'init-smartscan)
