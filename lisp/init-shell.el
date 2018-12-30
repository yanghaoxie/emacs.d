(use-package eshell
  :defer t
  :config
  (progn
    (setq eshell-cmpl-cycle-completions nil)
    (add-hook 'eshell-mode-hook 'my/eshell-set-keys)
    (add-hook 'eshell-after-prompt-hook 'my//protect-eshell-prompt)
    (defun my/eshell-set-keys ()
      (my/all-states-keys
	:keymaps 'eshell-mode-map
	"C-j" 'eshell-next-input
	"C-k" 'eshell-previous-input))
    (defun my//protect-eshell-prompt ()
      "Protect Eshell's prompt like Comint's prompts.
E.g. `evil-change-whole-line' won't wipe the prompt. This
is achieved by adding the relevant text properties."
      (let ((inhibit-field-text-motion t))
	(add-text-properties
	 (point-at-bol)
	 (point)
	 '(rear-nonsticky t
			  inhibit-line-move-field-capture t
			  field output
			  read-only t
			  front-sticky (field inhibit-line-move-field-capture)))))))

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

(use-package eshell-z
  :ensure t
  :defer t
  :init
  (with-eval-after-load 'eshell
    (require 'eshell-z)))

(use-package eshell-prompt-extras
  :ensure t
  :commands epe-theme-lambda
  :init
  (setq eshell-highlight-prompt nil
	eshell-prompt-function 'epe-theme-lambda))

(provide 'init-shell)
