(use-package ranger
    :ensure t
    :defer t
    :init
    (my/leader-keys
     "ar" 'ranger
     "ad" 'deer))
(provide 'init-ranger)
