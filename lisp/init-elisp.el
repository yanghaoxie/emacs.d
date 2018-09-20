(my/leader-keys-major-mode
 :keymaps 'emacs-lisp-mode-map
 "cc" 'emacs-lisp-byte-compile
 "eb" 'eval-buffer
 "ee" 'eval-last-sexp
 "er" 'eval-region
 "ef" 'eval-defun)
(provide 'init-elisp)
