(use-package ranger
    :ensure t
    :init
    (my/leader-keys
     "ar" 'ranger
     "ad" 'deer))
(provide 'init-ranger)
