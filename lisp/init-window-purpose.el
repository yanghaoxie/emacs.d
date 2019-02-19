(use-package window-purpose
  :ensure t
  :defer t
  :init
  (progn
    (my/leader-keys
      "rb" 'purpose-switch-buffer-with-purpose
      "rB" 'switch-buffer-without-purpose
      "rd" 'purpose-toggle-window-purpose-dedicated
      "r M-d" 'purpose-toggle-window-buffer-dedicated
      "rD" 'purpose-delete-non-dedicated-windows
      "rp" 'purpose-switch-buffer-with-some-purpose
      "rP" 'purpose-set-window-purpose))
  :config
  (add-to-list 'purpose-user-mode-purposes '(python-mode . py))
  (add-to-list 'purpose-user-mode-purposes '(inferior-python-mode . py-repl))
  (purpose-compile-user-configuration)
  (purpose-mode))

(use-package spacemacs-purpose-popwin
  :load-path "~/.emacs.d/site-lisp/spacemacs-purpose-popwin/"
  :after window-purpose
  :config
  (pupo-mode))

(provide 'init-window-purpose)
