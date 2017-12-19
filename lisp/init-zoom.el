(require 'zoom)
(setq zoom-size '(80 . 0.618))
;; (setq zoom-ignored-buffer-name-regexps '("^*helm.*" "^helm*"))
;; (setq zoom-ignored-buffer-names '("init.el" "*helm M-x*" "*eshell*"))
(custom-set-variables
 '(temp-buffer-resize-mode t))
(zoom-mode t)
(provide 'init-zoom)
