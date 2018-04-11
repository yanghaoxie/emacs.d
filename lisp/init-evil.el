(require 'evil)
(setq evil-default-state 'normal)
(evil-set-initial-state 'pdf-view-mode 'normal)
(evil-set-initial-state 'pdf-outline-buffer-mode 'normal)
(loop for (mode . state) in
      '(
	(magit-mode . emacs)
	)
      do (evil-set-initial-state mode state))
(evil-mode 1)
(provide 'init-evil)
