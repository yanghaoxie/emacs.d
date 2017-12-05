(require 'general)
(setq general-default-keymaps 'evil-normal-state-map);; key bindings in evil NORMAL mode
(general-define-key :prefix "SPC"
		    "rs" 'replace-string
		    "eb" 'eval-buffer
		    "pf" 'elpy-yapf-fix-code
		    "lt" 'load-theme
		    "wo" 'delete-other-windows
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
		    "cp" 'evilnc-comment-or-uncomment-paragraphs
		    "cr" 'comment-or-uncomment-region
		    "cv" 'evilnc-toggle-invert-comment-line-by-line
		    "."  'evilnc-copy-and-comment-operator
		    "\\" 'evilnc-comment-operator
		    "ck" 'elpy-shell-kill
		    "nb" 'next-buffer ;; switch buffer
		    "pb" 'previous-buffer
		    "bb" 'mode-line-other-buffer
		    "xg" 'magit-status ;; magit
		    "ho" 'helm-occur
		    "bf" 'beginning-of-defun ;; nav function
		    "ef" 'end-of-defun
		    "sd" 'sudo-edit
		    )
(general-define-key
 "gl" 'evil-goto-line
 "s" 'avy-goto-char-2)
;; elpy mode
(general-evil-define-key 'normal elpy-mode-map
  :prefix "SPC"
  "cc" 'elpy-shell-send-region-or-buffer
  "cz" 'elpy-shell-switch-to-shell 
  )
;; LaTeX mode
(general-evil-define-key 'normal LaTeX-mode-map
  :prefix "SPC"
  "cc" 'TeX-command-master
  "ca" 'TeX-command-run-all 
  )
(provide 'init-general)

