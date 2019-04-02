(use-package diff-hl
  :ensure t
  :defer t
  :init
  (progn
    (add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
    (add-hook 'emacs-lisp-mode-hook (lambda ()
				      (diff-hl-mode 1)
				      (diff-hl-flydiff-mode 1)
				      (diff-hl-margin-minor-mode 1)))))

(provide 'init-vc)
