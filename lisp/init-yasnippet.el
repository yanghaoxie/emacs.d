(use-package yasnippet
  :ensure t
  :commands (yas-global-mode yas-minor-mode yas-activate-extra-mode)
  :diminish yas-minor-mode
  :init
  (progn
    (dolist (hook '(prog-mode-hook org-mode-hook))
      (add-hook hook '(lambda () (yas-global-mode 1))))))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(use-package ivy-yasnippet
  :ensure t
  :after yasnippet
  :init
  (progn
    (setq ivy-yasnippet-expand-keys nil)
    (my/leader-keys
     "is" 'ivy-yasnippet)))

(use-package auto-yasnippet
  :ensure t
  :defer 5
  :init
  (progn
    (my/leader-keys
     "iSc" 'aya-create
     "iSe" 'aya-expand
     "iSw" 'aya-persist-snippet
     ))
  )

(use-package hippie-expand
  :init
  (define-key evil-insert-state-map [remap evil-complete-previous] 'hippie-expand)
  (setq hippie-expand-try-functions-list
        '(
          ;; Try to expand yasnippet snippets based on prefix
          yas-hippie-try-expand
          ;; Try to expand word "dynamically", searching the current buffer.
          try-expand-dabbrev
          ;; Try to expand word "dynamically", searching all other buffers.
          try-expand-dabbrev-all-buffers
          ;; Try to expand word "dynamically", searching the kill ring.
          try-expand-dabbrev-from-kill
          ;; Try to complete text as a file name, as many characters as unique.
          try-complete-file-name-partially
          ;; Try to complete text as a file name.
          try-complete-file-name
          ;; Try to expand word before point according to all abbrev tables.
          try-expand-all-abbrevs
          ;; Try to complete the current line to an entire line in the buffer.
          try-expand-list
          ;; Try to complete the current line to an entire line in the buffer.
          try-expand-line
          ;; Try to complete as an Emacs Lisp symbol, as many characters as
          ;; unique.
          try-complete-lisp-symbol-partially
          ;; Try to complete word as an Emacs Lisp symbol.
          try-complete-lisp-symbol
          ))
  :general
  ("M-/" 'hippie-expand))

(provide 'init-yasnippet)
