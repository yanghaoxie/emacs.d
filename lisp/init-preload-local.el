;; tool bar, menu bar, scroll bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(blink-cursor-mode 0)
;; set default browser
'(browse-url-browser-function (quote browse-url-generic))
'(browse-url-generic-program "firefox")
(set-face-attribute 'fringe nil :background "gray98" :foreground "gray100")
(setq tab-stop-list (number-sequence 4 200 4))
(setq tab-width 4)
;; push clipboard onto the killring
(setq save-interprogram-paste-before-kill t)
;; replace yes and no with y and n
(defalias 'yes-or-no-p 'y-or-n-p)
(provide 'init-preload-local)
