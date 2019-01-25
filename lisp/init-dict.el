(use-package bing-dict
  :ensure t
  :defer t
  :init
  (progn
    (setq bing-dict-cache-auto-save nil)
    (my/leader-keys
      "aw" 'bing-dict-brief)))

(use-package youdao-dictionary
  :ensure t
  :commands youdao-dictionary-search-from-input
  :init
  (progn
    (my/leader-keys
      "aw" 'youdao-dictionary-search-from-input)))

(provide 'init-dict)
