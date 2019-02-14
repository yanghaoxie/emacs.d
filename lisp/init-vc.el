(use-package diff-hl
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
    (add-hook 'emacs-lisp-mode-hook 'diff-hl-mode)))

(provide 'init-vc)
