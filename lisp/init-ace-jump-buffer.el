(make-ace-jump-buffer-function "eshell"
  (with-current-buffer buffer
    (not (eq major-mode 'eshell))))
