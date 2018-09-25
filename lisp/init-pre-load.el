;; install use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; further reduce load time, from use-package official github page
(eval-when-compile
  (require 'use-package))
(require 'diminish)
;; (require 'bind-key)

;; general
(use-package general
  :ensure t
  :config
  (progn
    (general-create-definer my/normal-keys
      :states 'normal
      :keymaps 'override)
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

;; hydra
(use-package hydra
  :ensure t)

;; key-chord
(use-package use-package-chords
  :ensure t
  :config
  (setq key-chord-two-keys-delay 0.2)
  (key-chord-mode 1))
(provide 'init-pre-load)
