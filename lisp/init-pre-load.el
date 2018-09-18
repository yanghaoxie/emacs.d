;; install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; general
(use-package general
  :ensure t
  :config
  (progn
    (general-create-definer my/leader-keys
      :states '(normal visual insert)
      :keymaps 'override
      :prefix "SPC"
      :non-normal-prefix "M-SPC")
    (general-create-definer my/leader-keys-major-mode
      :states '(normal visual insert)
      :keymaps 'override
      :prefix ","
      :non-normal-prefix "M-,")))

;; diminish
(use-package diminish
  :ensure t)
(provide 'init-pre-load)
