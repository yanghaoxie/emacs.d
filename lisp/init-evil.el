(use-package evil
  :ensure t
  :init
  (progn
    (evil-mode 1))
  :config
  (progn
    (evil-set-initial-state 'pdf-view-mode 'normal)
    (evil-set-initial-state 'pdf-outline-buffer-mode 'normal)
    (evil-set-initial-state 'paradox-menu-mode 'normal)
    (evil-set-initial-state 'calendar-mode 'normal)
    (setq evil-insert-state-cursor '(bar "LimeGreen")
          evil-normal-state-cursor '(box "darkorange")
	  evil-visual-state-cursor '(box "LightGoldenrod")
	  evil-emacs-state-cursor '(box "MediumPurple2")
	  evil-echo-state nil)))

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
    :after evil
    :init
    (my/leader-keys
      "jm" 'evilmi-jump-items)
    (global-evil-matchit-mode))

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

;; (use-package evil-cleverparens
;;   :ensure t
;;   :diminish evil-cleverparens-mode
;;   :defer t
;;   :hook emacs-lisp-mode)

(use-package evil-goggles
  :ensure t
  :diminish evil-goggles-mode
  :defer t
  :config
  (evil-goggles-mode))
(provide 'init-evil)
