(use-package bing-dict
  :ensure t
  :defer t
  :init
  (progn
    (setq bing-dict-cache-auto-save nil)
    (my/leader-keys
      "aw" 'bing-dict-brief)))
(provide 'init-bing-dict)
