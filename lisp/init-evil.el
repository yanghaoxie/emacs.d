(use-package evil
  :ensure t
  :init
  (progn
    (loop for (mode . state) in
          '((pdf-view-mode . normal))
          do (evil-set-initial-state mode state))
    (evil-mode 1)))

(use-package evil-escape
  :ensure t
  :diminish evil-escape-mode
  :init
  (setq evil-escape-key-sequence "jk"
        evil-escape-unordered-key-sequence t)
  :config
  (evil-escape-mode))

(use-package evil-anzu
    :ensure t
    ;; :diminish evil-anzu-mode
    :init
    (require 'evil-anzu)
    (global-anzu-mode)
    (diminish 'anzu-mode)
    :general
    (my/leader-keys
     "rs" 'anzu-query-replace
     "rr" 'anzu-query-replace-regexp)
    :config
    (global-set-key [remap query-replace] 'anzu-query-replace)
    (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)
    )

(use-package evil-exchange
    :ensure t
    :config
    (evil-exchange-install))

(use-package evil-nerd-commenter
    :ensure t
    :init
    (my/leader-keys
     ";" 'evilnc-comment-operator
     "cl" 'evilnc-comment-or-uncomment-lines
     "cp" 'evilnc-comment-or-uncomment-paragraphs))

(use-package evil-matchit
    :ensure t
    :defer t)

(use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode 1))

(use-package evil-snipe
    :ensure t
    :diminish evil-snipe-local-mode
    :init
    (setq evil-snipe-show-prompt nil)
    :config
    (evil-snipe-mode 1)
    (evil-snipe-override-mode 1))

(use-package evil-cleverparens
    :ensure t
    :diminish evil-cleverparens-mode
    :defer 5
    :config
    (evil-cleverparens-mode 1))
(provide 'init-evil)
