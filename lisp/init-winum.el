(winum-mode 1)
(set-face-attribute 'winum-face nil
		    :foreground "#8b6508")
(setq winum-ignored-buffers '("*helm mini*" "*helm M-x*" "*helm find files*"))
(setq winum-scope 'frame-local)

(provide 'init-winum)
