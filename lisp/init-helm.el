(use-package helm
  :ensure t
  :init
  (progn
    (with-eval-after-load 'helm
      (global-set-key (kbd "M-x") #'helm-M-x)
      (define-key helm-map (kbd "C-j") 'helm-next-line)
      (define-key helm-map (kbd "C-k") 'helm-previous-line)
      (define-key helm-map (kbd "C-S-j") 'helm-follow-action-forward)
      (define-key helm-map (kbd "C-S-k") 'helm-follow-action-backward)
      (define-key helm-map (kbd "C-h") 'helm-next-source)
      (define-key helm-map (kbd "C-S-h") 'describe-key)
      (define-key helm-map (kbd "C-l") (kbd "RET")))
    (with-eval-after-load 'helm-files
      (dolist (keymap (list helm-find-files-map helm-read-file-map))
	(define-key keymap (kbd "C-l") 'helm-execute-persistent-action)
	(define-key keymap (kbd "C-h") 'helm-find-files-up-one-level)
	;; rebind `describe-key' for convenience
	(define-key keymap (kbd "C-S-h") 'describe-key)))
    (my/leader-keys
      "a'" 'helm-available-repls
      "bb" 'helm-mini
      "Cl"   'helm-colors
      "fb" 'helm-filtered-bookmarks
      "ff"   'helm-find-files
      "fL"   'helm-locate
      "fr"   'helm-recentf
      "hdd"  'helm-apropos
      "hdF"  'my/helm-faces
      "hdb" 'describe-bindings
      "hdc" 'describe-char
      "hdf" 'describe-function
      "hdk" 'describe-key
      "hdp" 'describe-package
      "hdt" 'describe-theme
      "hdv" 'describe-variable
      "hn"  'view-emacs-news
      "hPs" 'profiler-start
      "hPk" 'profiler-stop
      "hPr" 'profiler-report
      "hPw" 'profiler-report-write-profile
      "hi"   'helm-info-at-point
      "hm"   'helm-man-woman
      "iu"   'helm-ucs
      "jI"   'helm-imenu-in-all-buffers
      "rm"   'helm-all-mark-rings
      "rl"   'helm-resume
      "rr"   'helm-register
      "ry"   'helm-show-kill-ring
      )
    (my/leader-keys-major-mode
      :keymaps 'org-mode-map
      "jh" 'helm-org-in-buffer-headings)
    :config
    (progn
      (custom-set-faces '(helm-action ((t (:foreground "dark sea green" :underline nil)))) )
      (setq helm-split-window-inside-p t
	    helm-echo-input-in-header-line t
	    helm-autoresize-min-height 20
	    helm-autoresize-max-height 0)
      (defun spacemacs//helm-hide-minibuffer-maybe ()
	"Hide minibuffer in Helm session if we use the header line as input field."
	(when (with-helm-buffer helm-echo-input-in-header-line)
	  (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
	    (overlay-put ov 'window (selected-window))
	    (overlay-put ov 'face
			 (let ((bg-color (face-background 'default nil)))
			   `(:background ,bg-color :foreground ,bg-color)))
	    (setq-local cursor-type nil))))
      (add-hook 'helm-minibuffer-set-up-hook
		'spacemacs//helm-hide-minibuffer-maybe)
      (helm-mode)
      (helm-autoresize-mode))))

;;;###autoload
;; copy from spacemacs
(defun my/helm-faces ()
  "Describe face."
  (interactive)
  (require 'helm-elisp)
  (let ((default (or (face-at-point) (thing-at-point 'symbol))))
    (helm :sources (helm-def-source--emacs-faces
                    (format "%s" (or default "default")))
          :buffer "*helm faces*")))

(use-package helm-projectile
  :ensure t
  :commands (helm-projectile-switch-to-buffer
	     helm-projectile-find-dir
	     helm-projectile-dired-find-dir
	     helm-projectile-recentf
	     helm-projectile-find-file
	     helm-projectile-grep
	     helm-projectile
	     helm-projectile-switch-project)
  :init
  (progn
    (my/leader-keys
      "pb"  'helm-projectile-switch-to-buffer
      "pd"  'helm-projectile-find-dir
      "pf"  'helm-projectile-find-file
      "pF"  'helm-projectile-find-file-dwim
      "ph"  'helm-projectile
      "pp"  'helm-projectile-switch-project
      "pr"  'helm-projectile-recentf
      "sgp" 'helm-projectile-grep)))

(use-package helm-ag
  :ensure t
  :commands (helm-do-ag
	     helm-do-ag-buffers
	     helm-do-ag-thi-file
	     helm-do-ag-project-root)
  :init
  (progn
    (my/leader-keys
      "sa" 'helm-do-ag
      "sb" 'helm-do-ag-buffers
      "s M-b" 'helm-do-ag-this-file
      "sp" 'helm-do-ag-project-root)))

(use-package helm-swoop
  :ensure t
  :init
  (progn
    (my/leader-keys
      "ss" 'helm-swoop))
  :config
  (progn
    (setq helm-swoop-split-with-multiple-windows t
	  helm-swoop-speed-or-color t
	  helm-swoop-pre-input-function (lambda () ""))))

(use-package helm-themes
  :ensure t
  :defer t
  :init
  (my/leader-keys
    "Ts" 'helm-themes))

(use-package helm-xref
  :ensure t
  :commands (helm-xref-show-xrefs)
  :init
  (progn
    ;; This is required to make `xref-find-references' not give a prompt.
    ;; `xref-find-references' asks the identifier (which has no text property)
    ;; and then passes it to `lsp-mode', which requires the text property at
    ;; point to locate the references.
    ;; https://debbugs.gnu.org/cgi/bugreport.cgi?bug=29619
    (setq xref-prompt-for-identifier '(not xref-find-definitions
					   xref-find-definitions-other-window
					   xref-find-definitions-other-frame
					   xref-find-references
					   spacemacs/jump-to-definition))
    ;; Use helm-xref to display `xref.el' results.
    (setq xref-show-xrefs-function #'helm-xref-show-xrefs)))

(use-package helm-descbinds
  :ensure t
  :init
  (progn
    (setq helm-descbinds-window-style 'split)
    (add-hook 'helm-mode-hook 'helm-descbinds-mode)
    (my/leader-keys
      "?" 'helm-descbinds)))

(use-package helm-flx
  :ensure t
  :init
  (helm-flx-mode))

(use-package flyspell-correct-helm
  :ensure t
  :commands (flyspell-correct-helm)
  :general
  (:keymaps 'override
	    "C-:" 'flyspell-correct-wrapper))

(use-package helm-org-rifle
  :ensure t
  :config
  (progn
    ))

(use-package helm-bibtex
  :ensure t
  :commands helm-bibtex
  :init
  (progn
    (my/leader-keys
      "ib" 'helm-bibtex)
    (my/leader-keys-minor-mode
      :keymaps 'bibtex-completion-notes-mode-map
      "s" 'bibtex-completion-exit-notes-buffer))
  :config
  (setq bibtex-completion-pdf-field "file"
	bibtex-completion-find-additional-pdfs t
	bibtex-completion-bibliography "~/Dropbox/software/Zotero/bibtex/main.bib"
	bibtex-completion-notes-path "~/Dropbox/document/org/references/ref-notes.org"
	bibtex-completion-notes-template-one-file
	"\n** ${title}\n  :PROPERTIES:\n  :Custom_ID: ${=key=}\n  :NOTER_DOCUMENT: ${file}\n  :END:\n\n"
	bibtex-completion-additional-search-fields '(eventtitle)
	bibtex-completion-display-formats
	'((article       . "${=has-pdf=:1}${=has-note=:1} ${=type=:3} ${year:4} ${author:36} ${title:*} ${journal:40}")
	  (inbook        . "${=has-pdf=:1}${=has-note=:1} ${=type=:3} ${year:4} ${author:36} ${title:*} Chapter ${chapter:32}")
	  (incollection  . "${=has-pdf=:1}${=has-note=:1} ${=type=:3} ${year:4} ${author:36} ${title:*} ${booktitle:40}")
	  (inproceedings . "${=has-pdf=:1}${=has-note=:1} ${=type=:3} ${year:4} ${author:36} ${title:*} ${eventtitle:40}")
	  (t             . "${=has-pdf=:1}${=has-note=:1} ${=type=:3} ${year:4} ${author:36} ${title:*} ${eventtitle:40}"))))
(provide 'init-helm)
