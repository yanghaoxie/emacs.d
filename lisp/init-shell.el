(use-package eshell
  :defer t
  :config
  (progn
    (setq eshell-cmpl-cycle-completions nil)
    (add-hook 'eshell-mode-hook 'my/eshell-set-keys)
    (defun my/eshell-set-keys ()
      (my/all-states-keys
	:keymaps 'eshell-mode-map
	"C-j" 'eshell-next-input
	"C-k" 'eshell-previous-input))))

(use-package shell-pop
  :ensure t
  :defer t
  :commands shell-pop
  :init
  (setq shell-pop-shell-type (quote ("eshell" "*eshell*" (lambda nil (eshell shell-pop-term-shell))))
	shell-pop-full-span t)
  (my/leader-keys
    "'" 'shell-pop
    "as" 'eshell))
(provide 'init-shell)
