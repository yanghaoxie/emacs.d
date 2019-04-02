(use-package synosaurus
  :ensure t
  :commands (synosaurus-lookup synosaurus-choose-and-replace)
  :init
  (my/leader-keys
    "xSl" 'synosaurus-lookup
    "xSr" 'synosaurus-choose-and-replace)
  :config
  (setq synosaurus-backend 'synosaurus-backend-wordnet
	synosaurus-choose-method 'ivy-read))
(provide 'init-synosaurus)
