;; ivy
(use-package ivy
  :ensure t
  :diminish ivy-mode
  :init
  (progn
    (setq ivy-use-virtual-buffers t
          ivy-re-builders-alist '((t . ivy--regex-ignore-order)))
    (my/leader-keys
      "bb" 'ivy-switch-buffer)
    (my/leader-keys-major-mode
      :keymaps 'inferior-python-mode-map
      "h" 'counsel-shell-history))
  ;; :config
  :general
  (ivy-minibuffer-map
   "C-j" 'ivy-next-line
   "C-k" 'ivy-previous-line
   "C-h" (kbd "DEL")
   "C-l" 'ivy-alt-done))

(use-package ivy-rich
  :ensure t
  :after (ivy counsel)
  :config
  (ivy-rich-mode 1))
;; counsel
(use-package counsel
  :ensure t
  :init
  :general
  ("M-x" 'counsel-M-x)
  (my/leader-keys
   ;; files
   "ff" 'counsel-find-file
   ;; help
   "?"   'counsel-descbinds
   "hdf" 'counsel-describe-function
   "hdF" 'counsel-describe-face
   "hdv" 'counsel-describe-variable
   "hi"  'counsel-info-lookup-symbol
   ;; register/ring
   "ry"  'counsel-yank-pop
   "rm"  'counsel-mark-ring
   ;; search
   "sa" 'counsel-ag
   "sp" 'counsel-projectile-ag
   ;; themes
   "Ts"  'counsel-load-theme
   ;; insert color
   "ic" 'counsel-colors-emacs
   "iu" 'counsel-unicode-char
   )
  :config
  (ivy-mode))

(use-package swiper
  :ensure t
  :config
  :general
  ("C-s" 'swiper)
  (my/leader-keys
   "ss" 'swiper))

(use-package ivy-xref
  :ensure t
  :defer t
  :init
  (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))

(use-package amx
  :ensure t
  :commands (counsel-M-X))

(use-package ivy-bibtex
  :ensure t
  :commands ivy-bibtex
  :init
  (progn
    (my/leader-keys
      "ib" 'ivy-bibtex)
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

(use-package counsel-projectile
    :ensure t
    :defer t
    :init
    (my/leader-keys
     "p SPC" 'counsel-projectile
     "pf" 'counsel-projectile-find-file
     "pb" 'counsel-projectile-switch-to-buffer
     "pd" 'counsel-projectile-find-dir
     "pp" 'counsel-projectile-switch-project
     "psg" 'counsel-projectile-grep
     "pss" 'counsel-projectile-ag
     "psr" 'counsel-projectile-rg)
    :config
    (counsel-projectile-mode))

(use-package flyspell-correct-ivy
  :ensure t
  :commands (flyspell-correct-ivy)
  :general
  (:keymaps 'override
     "C-;" 'flyspell-correct-wrapper))

(provide 'init-ivy)
