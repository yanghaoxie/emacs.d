(require 'general)
(setq general-default-states '(normal visual insert emacs))
;; (setq general-default-keymaps 'evil-normal-state-map);; key bindings in evil NORMAL mode
(general-define-key
 :states '(insert)
 ;; pyim
 "M-i" 'pyim-convert-code-at-point
)
(general-define-key
 :states '(normal visual)
 ;; eyebrowse
 "gt" 'eyebrowse-next-window-config
 "gT" 'eyebrowse-prev-window-config
 "gc" 'eyebrowse-close-window-config
 "gr" 'eyebrowse-create-window-config
 "gl" 'eyebrowse-last-window-config
 "g0" 'eyebrowse-switch-to-window-config-0
 "g1" 'eyebrowse-switch-to-window-config-1
 "g2" 'eyebrowse-switch-to-window-config-2
 "g3" 'eyebrowse-switch-to-window-config-3
 "g4" 'eyebrowse-switch-to-window-config-4
 "g5" 'eyebrowse-switch-to-window-config-5
 "g6" 'eyebrowse-switch-to-window-config-6
 "g7" 'eyebrowse-switch-to-window-config-7
 "g8" 'eyebrowse-switch-to-window-config-8
 "g9" 'eyebrowse-switch-to-window-config-9
  )
(general-define-key
 :states '(normal insert visual)
 :keymaps 'override
 ;; window-numbering
 "M-1" 'select-window-1
 "M-2" 'select-window-2
 "M-3" 'select-window-3
 "M-4" 'select-window-4
 "M-5" 'select-window-5
 )
(general-define-key
 :states '(normal visual insert)
 :keymaps 'override
 :prefix "SPC"
 :non-normal-prefix "M-SPC"
 "qrs" 'query-replace
 "qrr" 'query-replace-regexp
 "eb" 'eval-buffer
 "lt" 'load-theme
 "dt" 'disable-theme
 "wo" 'delete-other-windows
 "xf" 'helm-find-files
 "xs" 'save-buffer
 "kb" 'kill-buffer
 "xb" 'helm-mini
 "hb" 'helm-bibtex
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
 "ktb" '(lambda () (interactive) (kill-buffer (current-buffer)))
 "nr" 'neotree-refresh
 "utv" 'undo-tree-visualize
 "es" 'eshell
 "rp" 'run-python
 "kmb" 'kill-matching-buffers
 "sk" 'save-buffers-kill-terminal
 "pl" 'package-list-packages
 "fm" 'fci-mode
 ;; "gl" 'evil-goto-line
 "ssm" 'smartparens-strict-mode
 ;; "de" 'dired
 "de" 'deer
 "rb" 'revert-buffer
 "sc" 'shell-command
 "sh" 'shell
 "af" 'auto-fill-mode
 "oo" '(lambda () (interactive) (find-file "~/Dropbox/document/org/main.org"))
 "rn" '(lambda () (interactive) (find-file "~/Dropbox/document/org/references/ref_notes.org"))
 "cy" 'clipboard-yank
 "us" 'sp-unwrap-sexp
 "[" '(lambda () (interactive) (shrink-window-horizontally 30))
 "]" '(lambda () (interactive) (enlarge-window-horizontally 30))
 "bw" 'balance-windows
 "pi" 'package-install
 "nf" 'new-frame
 "df" 'delete-frame
 "gf" 'grep-find
 "rg" 'ranger
 "bs" 'bookmark-set
 "bj" 'bookmark-jump
 "bd" 'bookmark-delete
 "rt" 'redtick
 "il" 'interleave-mode
 "oc" 'org-capture
 "wr" 'window-configuration-to-register
 "jr" 'jump-to-register
 "fe" 'elfeed
 "-" 'text-scale-decrease
 "=" 'text-scale-increase
 "sa" 'text-scale-adjust
 "sp" 'spotify-playpause
 )
(general-define-key :prefix ","
		    :non-normal-prefix "M-,"
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
  "olp" 'org-latex-export-to-pdf
  ;; "mr" 'org-meta-return
  "le" 'org-edit-latex-environment
  )
;;org mode in normal state
(general-define-key
 :keymaps 'org-mode-map
 :states 'normal
 "gb" 'org-backward-heading-same-level
 "gn" 'org-next-visible-heading
 "gp" 'org-previous-visible-heading
 "gf" 'org-forward-heading-same-level
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
  "pf" 'elpy-yapf-fix-code
  "ck" 'elpy-shell-kill
  "gd" 'elpy-goto-definition
  "ga" 'elpy-goto-assignment
  "ogd" 'elpy-goto-definition-other-window
  "oga" 'elpy-goto-assignment-other-window
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
  "lfb" 'LaTeX-fill-buffer
  )
;; expand-region
;; press ",xx" to expand region
;; then press "z" to contract, "x" to expand
(eval-after-load "evil"
  '(progn
(setq expand-region-contract-fast-key "z")))
;; pdf view mode
(general-define-key
 :states '(normal visual)
 :keymaps 'pdf-view-mode-map
 ;; Navigation
 "j" '(lambda() (interactive) (pdf-view-next-line-or-next-page 35))
 "J" '(lambda() (interactive) (pdf-view-next-line-or-next-page 10))
 "k" '(lambda() (interactive) (pdf-view-previous-line-or-previous-page 35))
 "K" '(lambda() (interactive) (pdf-view-previous-line-or-previous-page 10))
 "h" 'pdf-view-previous-page
 "l" 'pdf-view-next-page
 "d" 'pdf-view-scroll-up-or-next-page
 "u" 'pdf-view-scroll-down-or-previous-page
 "gg" 'pdf-view-first-page
 "G" 'pdf-view-last-page
 ;; Register
 "m" 'pdf-view-position-to-register
 "'" 'pdf-view-jump-to-register
 ;; Scale/Fit
 "W"  'pdf-view-fit-width-to-window
 "H"  'pdf-view-fit-height-to-window
 "P"  'pdf-view-fit-page-to-window
 ;; "m"  'pdf-view-set-slice-using-mouse
 "b"  'pdf-view-set-slice-from-bounding-box
 "r"  'pdf-view-reset-slice
 "zr" 'pdf-view-scale-reset
 "-" 'pdf-view-shrink
 "=" 'pdf-view-enlarge
;; Annotations
 "aD" 'pdf-annot-delete
 "at" 'pdf-annot-attachment-dired
 "al" 'pdf-annot-list-annotations
 "am" 'pdf-annot-add-markup-annotation
 ;; Actions
 "o" 'pdf-occur
 "O" 'pdf-outline
 "p" 'pdf-misc-print-document
 ;; "l" 'pdf-links-action-perform
 "R" 'pdf-view-revert-buffer
 "t" 'pdf-annot-attachment-dired
 "n" 'pdf-view-midnight-minor-mode
 ;; search
 "/" 'isearch-forward
 "?" 'isearch-backward
 ;; Other
 "q" 'image-kill-buffer
 "f" 'pdf-links-action-perform
 )
;; pdf-occur-buffer-mode
(general-define-key
 :states '(normal visual)
 :keymaps 'pdf-occur-buffer-mode-map
 "RET" 'pdf-occur-goto-occurrence
)
;; pdf-outline-mode
(general-define-key
 :states '(normal visual)
 :keymaps 'pdf-outline-buffer-mode-map
 "RET" 'pdf-outline-follow-link
 "M-RET" 'pdf-outline-follow-link-and-quit
 "TAB" 'pdf-outline-toggle-subtree
 )
;; package-menu-mode
(general-define-key
 :states '(normal visual)
 :keymaps 'package-menu-mode-map
 "i" 'package-menu-mark-install
 "d" 'package-menu-mark-delete
 "u" 'package-menu-mark-unmark
 "x" 'package-menu-execute
 )
;; eshell-mode
;; this is a work around, explained in general issue #80
(add-hook 'eshell-mode-hook
	  '(lambda () (general-define-key
		       :states 'insert
		       :keymaps 'eshell-mode-map
		       "C-n" 'eshell-next-input
		       "C-p" 'eshell-previous-input
		       "M-p" 'helm-eshell-history
		       )))
;; company-quickhelp-mode
(add-hook 'company-mode-hook
	  '(lambda () (general-define-key
			:states '(insert normal)
			:keymaps 'override
			"M-h" 'company-quickhelp-manual-begin
			)))
;; interleave-pdf-mode
(general-define-key
 :states '(normal visual)
 :keymaps 'interleave-pdf-mode-map
 :prefix "SPC"
 "an" 'interleave-add-note)
;; (add-hook 'flyspell-mode-hook
;; 	  '(lambda () (general-define-key
;; 		       :states '(normal visual insert)
;; 		       :keymaps 'flyspell-mode-map
;; 		       "C-;" 'flyspell-correct-previous-word-generic
;; 		       )))
;; flyspell-mode
(general-define-key
 :states '(normal visual insert)
 :keymaps 'flyspell-mode-map
 "C-;" 'flyspell-correct-previous-word-generic)
;; elfeed-search-mode
(general-define-key
 :states 'normal
 :keymaps 'elfeed-search-mode-map
 "RET" 'elfeed-search-show-entry
 "g" 'elfeed-update
 "G" 'elfeed-search-fetch
 "q" 'elfeed-goodies/delete-pane
 )
;; elfeed-show-mode
(general-define-key
 :states 'normal
 :keymaps 'elfeed-show-mode-map
 "q" 'elfeed-goodies/delete-pane)
;; winum
;; (general-define-key
;;  :states '(normal insert visual)
;;  :keymaps 'override
;;  "M-1" 'winum-select-window-1
;;  "M-2" 'winum-select-window-2
;;  "M-3" 'winum-select-window-3
;;  "M-4" 'winum-select-window-4
;;  "M-5" 'winum-select-window-5
;;  "M-6" 'winum-select-window-6
;;  )
(provide 'init-general)
