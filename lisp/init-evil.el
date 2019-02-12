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
    (evil-set-initial-state 'process-menu-mode 'motion)
    (evil-set-initial-state 'special-mode 'motion)
    (evil-set-initial-state 'pdf-occur-buffer-mode 'normal)
    (evil-set-initial-state 'imenu-list-major-mode 'normal)
    (evil-set-initial-state 'neotree-mode 'normal)
    (evil-set-initial-state 'youdao-dictionary-mode 'motion)
    (evil-set-initial-state 'flycheck-error-list-mode 'normal)
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
  :init
  (require 'evil-anzu)
  (global-anzu-mode)
  :general
  (my/leader-keys
    "rs" 'anzu-query-replace
    "rr" 'anzu-query-replace-regexp)
  :config
  (setq anzu-cons-mode-line-p nil)
  (global-set-key [remap query-replace] 'anzu-query-replace)
  (global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp))

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
  :commands evilmi-jump-items
  :init
  (my/leader-keys
    "jm" 'evilmi-jump-items)
  (global-set-key [remap evil-jump-item] 'evilmi-jump-items)
  :config
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
  (evil-snipe-override-mode 1)
  (my/normal-keys
    "s" 'evil-snipe-s
    "S" 'evil-snipe-S))

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

(use-package evil-indent-plus
  :ensure t
  :defer t
  :init
  (progn
    (define-key evil-inner-text-objects-map "i" 'evil-indent-plus-i-indent)
    (define-key evil-outer-text-objects-map "i" 'evil-indent-plus-a-indent)
    (define-key evil-inner-text-objects-map "I" 'evil-indent-plus-i-indent-up)
    (define-key evil-outer-text-objects-map "I" 'evil-indent-plus-a-indent-up)
    (define-key evil-inner-text-objects-map "J"
      'evil-indent-plus-i-indent-up-down)
    (define-key evil-outer-text-objects-map "J"
      'evil-indent-plus-a-indent-up-down)))

(provide 'init-evil)
