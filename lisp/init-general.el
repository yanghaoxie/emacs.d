(require 'general)
(setq general-default-keymaps 'evil-normal-state-map);; key bindings in evil NORMAL mode
(general-define-key :prefix "SPC"
		    "rs" 'replace-string
		    "eb" 'eval-buffer
		    "pf" 'elpy-yapf-fix-code
		    "lt" 'load-theme
		    "ad" 'ace-delete-other-windows
		    "xf" 'helm-find-files
		    "xs" 'save-buffer
		    "xk" 'kill-buffer
		    "xb" 'helm-mini
		    "xc" 'save-buffers-kill-terminal
		    "x0" 'delete-window;; windows
		    "x2" 'split-window-below
		    "x3" 'split-window-right
		    "fcl" 'flycheck-list-errors;; flycheck
		    "fcp" 'flycheck-previous-error
		    "fcn" 'flycheck-next-error
		    "ci" 'evilnc-comment-or-uncomment-lines ;; evil-nerd-commenter
		    "cl" 'evilnc-quick-comment-or-uncomment-to-the-line
		    "cc" 'evilnc-copy-and-comment-lines
		    "cp" 'evilnc-comment-or-uncomment-paragraphs
		    "cr" 'comment-or-uncomment-region
		    "cv" 'evilnc-toggle-invert-comment-line-by-line
		    "."  'evilnc-copy-and-comment-operator
		    "\\" 'evilnc-comment-operator
		    "cz" 'elpy-shell-switch-to-shell ;; elpy
		    "cc" 'elpy-shell-send-region-or-buffer
		    "ck" 'elpy-shell-kill
		    "nb" 'next-buffer ;; switch buffer
		    "pb" 'previous-buffer
		    "xg" 'magit-status)
(provide 'init-general)

