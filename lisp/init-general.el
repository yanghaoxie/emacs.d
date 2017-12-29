(require 'general)
(setq general-default-keymaps 'evil-normal-state-map);; key bindings in evil NORMAL mode
(general-define-key :prefix "SPC"
		    "qrs" 'query-replace
		    "qrr" 'query-replace-regexp
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
		    "xx" 'er/expand-region
		    "hs" 'helm-swoop
		    "ce" 'LaTeX-environment
		    "nt" 'neotree-toggle
		    "ktb" 'kill-this-buffer
		    "nr" 'neotree-refresh
		    "utv" 'undo-tree-visualize
		    "es" 'eshell
		    "rp" 'run-python
		    "kmb" 'kill-matching-buffers
		    "sk" 'save-buffers-kill-terminal
		    "pl" 'package-list-packages
		    )
(general-define-key
 "gl" 'evil-goto-line
 ;; "s" 'avy-goto-char-2
 )
(general-define-key :prefix ";"
		    "s" 'avy-goto-char-2
		    "pb" 'preview-buffer
		    "pap" 'preview-at-point
		    "pca" 'preview-clearout
		    "pcb" 'preview-clearout-buffer
		    )
;; org mode
(general-evil-define-key 'normal org-mode-map
  :prefix "SPC"
  "oe" 'org-export-dispatch
  "oap" 'org-open-at-point
  "op" 'my/org-ref-open-pdf-at-point 
  "ic" 'org-ref-helm-insert-cite-link
  ;; navagation
  "nh" 'org-next-visible-heading
  "ph" 'org-previous-visible-heading
  "ni" 'org-next-item
  "pi" 'org-previous-item
  )

;; elpy mode
(general-evil-define-key 'normal elpy-mode-map
  :prefix "SPC"
  "cc" 'elpy-shell-send-region-or-buffer
  "cz" 'elpy-shell-switch-to-shell 
  "ed" 'elpy-doc
  )
;; LaTeX mode
(general-evil-define-key 'normal LaTeX-mode-map
  :prefix "SPC"
  "cc" 'TeX-command-master
  "ca" 'TeX-command-run-all 
  )
;; expand-region
;; press ",xx" to expand region
;; then press "z" to contract, "x" to expand
(eval-after-load "evil"
  '(progn
(setq expand-region-contract-fast-key "z")))
(provide 'init-general)
