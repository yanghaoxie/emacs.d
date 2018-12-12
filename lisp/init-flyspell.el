(use-package flyspell
  :defer t
  :diminish flyspell-mode
  :init
  (my/leader-keys
    "t M-s" 'my/toggle-flyspell
    "M-s b" 'flyspell-buffer
    "M-s n" 'flyspell-goto-next-error
    "M-s p" 'flyspell-correct-at-point)
  (defhydra hydra-spelling ()
    ("b" flyspell-buffer "check buffer")
    ("d" ispell-change-dictionary "change dictionary")
    ("n" flyspell-goto-next-error "next")
    ("c" flyspell-correct-previous-word-generic "correct")
    ("q" nil "quit"))
  (my/leader-keys
    "M-s ." 'hydra-spelling/body)
  :config
  (progn
    (add-hook 'prog-mode-hook #'flyspell-prog-mode)
    (add-hook 'text-mode-hook #'turn-on-flyspell)
    (add-hook 'org-mode-hook #'turn-on-flyspell)))

(use-package flyspell-correct
  :ensure t)

(provide 'init-flyspell)
