(use-package emacs-lisp
  :mode ("\\.el\\'" . emacs-lisp-mode)
  :init
  (my/leader-keys-major-mode
  :keymaps 'emacs-lisp-mode-map
  :major-modes t
  "c" '(:ignore t :which-key "compile")
  "cc" 'emacs-lisp-byte-compile
  "ci"  'my/byte-compile-init-dir
  "e" '(:ignore t :which-key "eval")
  "eb" 'eval-buffer
  "ee" 'eval-last-sexp
  "er" 'eval-region
  "ef" 'eval-defun))
(provide 'init-elisp)
