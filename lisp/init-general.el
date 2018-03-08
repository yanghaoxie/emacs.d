(require 'general)
(setq general-default-states '(normal visual insert emacs))
;; (setq general-default-keymaps 'evil-normal-state-map);; key bindings in evil NORMAL mode
(general-define-key
 ;; :states '(normal visual insert emacs)
 ;; :keymaps 'text-mode-map
		    :prefix "SPC"
		    :non-normal-prefix "M-SPC"
		    "qrs" 'query-replace
		    "qrr" 'query-replace-regexp
		    "eb" 'eval-buffer
		    "pf" 'elpy-yapf-fix-code
		    "lt" 'load-theme
		    "wo" 'delete-other-windows
		    "xf" 'helm-find-files
		    "xs" 'save-buffer
		    "kb" 'kill-buffer
		    "xb" 'helm-mini
		    ;; "xc" 'save-buffers-kill-terminal
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
		    "se" 'sudo-edit
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
		    "fm" 'fci-mode
		    "gl" 'evil-goto-line
		    "ssm" 'smartparens-strict-mode
		    "de" 'dired
		    "rb" 'revert-buffer
		    "sc" 'shell-command
		    "sh" 'shell
		    "af" 'auto-fill-mode
		    "oo" '(lambda () (interactive) (find-file "~/Dropbox/document/org/main.org"))
		    "cy" 'clipboard-yank
		    )
(general-define-key :states '(normal visual)
 "gl" 'evil-goto-line
 ;;
 ;;"s" 'avy-goto-char-2
 )
(general-define-key :prefix ";"
		    :non-normal-prefix "M-;"
		    "s" 'avy-goto-char-2
		    "pb" 'preview-buffer
		    "pap" 'preview-at-point
		    "pca" 'preview-clearout
		    "pcb" 'preview-clearout-buffer
		    )
;; org mode
(general-define-key
    ;; 'normal org-mode-map
  :keymaps 'org-mode-map
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "oe" 'org-export-dispatch
  "oa" 'org-open-at-point
  "op" 'my/org-ref-open-pdf-at-point 
  "ic" 'org-ref-helm-insert-cite-link
  ;; navagation
  "nh" 'org-next-visible-heading
  "ph" 'org-previous-visible-heading
  "ni" 'org-next-item
  "pi" 'org-previous-item
  "nk" 'org-ref-next-key
  "pk" 'org-ref-previous-key
  ;; move things
  "mu" 'org-metaup
  "md" 'org-metadown
  "ml" 'org-metaleft
  "mr" 'org-metaright
  ;; insert headings
  "ih" 'org-insert-heading
  "ish" 'org-insert-subheading
  ;; other
  "tl" 'org-toggle-latex-fragment
  ;; "mr" 'org-meta-return
  "le" 'org-edit-latex-environment
  )

;; elpy mode
(general-define-key
    ;; 'normal elpy-mode-map
 :keymaps 'elpy-mode-map
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "cc" 'elpy-shell-send-region-or-buffer
  "cz" 'elpy-shell-switch-to-shell 
  "ed" 'elpy-doc
  )
;; LaTeX mode
(general-define-key
    ;; 'normal LaTeX-mode-map
  :keymaps 'LaTeX-mode-map
  :prefix "SPC"
  :non-normal-prefix "M-SPC"
  "cc" 'TeX-command-master
  "ca" 'TeX-command-run-all 
  "sq" 'org-edit-src-exit
  )
;; expand-region
;; press ",xx" to expand region
;; then press "z" to contract, "x" to expand
(eval-after-load "evil"
  '(progn
(setq expand-region-contract-fast-key "z")))



(provide 'init-general)
