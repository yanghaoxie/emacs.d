(use-package avy
    :ensure t
    :defer t
    :init
    (progn
      (setq avy-all-windows nil
            avy-background t)
      (my/leader-keys
       "jj" 'avy-goto-char-timer
       "jl" 'avy-goto-line
       "jw" 'avy-goto-word-or-subword-1
       "jc" 'avy-goto-char)))
(provide 'init-avy)
