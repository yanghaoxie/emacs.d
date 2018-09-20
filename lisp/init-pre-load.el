;; install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; further reduce load time, from use-package official github page
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

;; general
(use-package general
  :ensure t
  :config
  (progn
    (general-create-definer my/leader-keys
      :states '(normal visual motion emacs insert)
      :keymaps 'override
      :prefix "SPC"
      :non-normal-prefix "M-SPC")
    (general-create-definer my/leader-keys-major-mode
      :states '(normal visual motion emacs insert)
      :keymaps 'override
      :prefix ","
      :non-normal-prefix "M-,")))

;; diminish
(use-package diminish
  :ensure t)
(provide 'init-pre-load)
