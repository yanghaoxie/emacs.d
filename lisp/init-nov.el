(use-package nov
  :ensure t
  :defer t
  :mode ("\\.epub\\'" . nov-mode)
  :init
  (add-hook 'nov-mode-hook 'visual-line-mode)
  (add-hook 'nov-mode-hook 'visual-fill-column-mode)
  (add-hook 'nov-mode-hook (lambda ()
			     (setq visual-fill-column-center-text t)
			     (display-line-numbers-mode -1)))
  :config
  (setq visual-fill-column-center-text t)
  (my/normal-keys
    :keymaps 'nov-mode-map
    "H" 'nov-previous-document
    "L" 'nov-next-document
    "[" 'nov-previous-document
    "]" 'nov-next-document
    "d" 'nov-scroll-up
    "u" 'nov-scroll-down
    "gm" 'nov-display-metadata
    "gr" 'nov-render-document
    "gt" 'nov-goto-toc
    "gv" 'nov-view-source
    "gV" 'nov-view-content-source
    "q" 'quit-window))

(provide 'init-nov)
