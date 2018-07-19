;; tool bar, menu bar, scroll bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(blink-cursor-mode 0)
;; set default browser
'(browse-url-browser-function (quote browse-url-generic))
'(browse-url-generic-program "firefox")
(set-face-attribute 'fringe nil :background "gray98" :foreground "gray")
;; (set-fringe-mode 0)
(setq tab-stop-list (number-sequence 4 200 4))
(setq tab-width 4)
;; push clipboard onto the killring
(setq save-interprogram-paste-before-kill t)
;; replace yes and no with y and n
(defalias 'yes-or-no-p 'y-or-n-p)
(add-hook 'tex-mode-hook 'auto-fill-mode)
(set-face-attribute 'secondary-selection nil :background "gray95")
;; truncate file name
;; (setq-default mode-line-buffer-identification (list -40 (propertized-buffer-identification "%12b")))
;; proxy
;; (setq url-gateway-method 'socks)
;; (setq socks-server '("Default server" "127.0.0.1" 1080 5))
;; (setq url-gateway-local-host-regexp
;;       (concat "\\`" (regexp-opt '("localhost" "127.0.0.1")) "\\'"))
;; show file size on mode line
(size-indication-mode 1)
(winner-mode 1)
(add-to-list 'default-frame-alist '(font . "Hack"))
(provide 'init-preload-local)
