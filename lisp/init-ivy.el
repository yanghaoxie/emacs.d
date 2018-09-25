;; ivy
(use-package ivy
  :ensure t
  :diminish ivy-mode
  :init
  (progn
    (setq ivy-use-virtual-buffers t
          ivy-re-builders-alist '((t . ivy--regex-ignore-order))))
  ;; :config
  :general
  (ivy-minibuffer-map
   "C-j" 'ivy-next-line
   "C-k" 'ivy-previous-line
   "C-h" (kbd "DEL")
   "C-l" 'ivy-alt-done
            )
)
;; counsel
(use-package counsel
  :ensure t
  :init
  :general
  ("M-x" 'counsel-M-x)
  (my/leader-keys
   ;; files
   "ff" 'counsel-find-file
   ;; buffer
   "bb" 'counsel-ibuffer
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
  :config
  (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))

(use-package amx
  :ensure t
  :commands (counsel-M-X))

(use-package ivy-bibtex
  :ensure t
  :defer t
  :init
  (my/leader-keys
    "ib" 'ivy-bibtex)
  :config
  (setq bibtex-completion-pdf-field "file"
	bibtex-completion-find-additional-pdfs t
	bibtex-completion-bibliography "~/Dropbox/software/Zotero/bibtex/main.bib"
	bibtex-completion-notes-path "~/Dropbox/document/org/references/ref_notes.org"
	bibtex-completion-notes-template-one-file
	"\n* ${title} cite:${=key=}\n  :PROPERTIES:\n  :Custom_ID: ${=key=}\n :INTERLEAVE_PDF: ${file}\n :END:\n\n")
  )
(provide 'init-ivy)
