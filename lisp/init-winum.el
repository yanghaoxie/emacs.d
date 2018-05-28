(winum-mode 1)
(set-face-attribute 'winum-face nil
		    :foreground "#8b6508")
(setq winum-ignored-buffers '("*helm mini*" "*helm M-x*" "*helm find files*"))

(provide 'init-winum)
