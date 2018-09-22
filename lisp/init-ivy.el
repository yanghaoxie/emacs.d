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
   ;; themes
   "Ts"  'counsel-load-theme
   )
  :config
  (ivy-mode))

(use-package ivy-xref
  :ensure t
  :init (setq xref-show-xrefs-function #'ivy-xref-show-xrefs))
(provide 'init-ivy)
