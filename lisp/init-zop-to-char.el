(use-package zop-to-char
  :ensure t
  :config
  (progn
    (global-set-key [remap zap-to-char] 'zop-to-char)
    (setq zop-to-char-prec-keys '(left ?\M-b)
	  zop-to-char-next-keys '(right ?\M-f))))

(provide 'init-zop-to-char)
