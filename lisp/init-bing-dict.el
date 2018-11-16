(use-package bing-dict
  :ensure t
  :defer t
  :init
  (progn
    (my/leader-keys
      "aw" 'bing-dict-brief)))
(provide 'init-bing-dict)
