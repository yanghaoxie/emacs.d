(use-package bing-dict
  :ensure t
  :init
  (progn
    (my/leader-keys
      "aw" 'bing-dict-brief)))
(provide 'init-bing-dict)
