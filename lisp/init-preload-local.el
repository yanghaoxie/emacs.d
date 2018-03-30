;; tool bar, menu bar, scroll bar
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(show-paren-mode 1)
(set-face-attribute 'fringe nil :background "gray98" :foreground "gray100")
(setq tab-stop-list (number-sequence 4 200 4))
(setq tab-width 4)
;; push clipboard onto the killring
(setq save-interprogram-paste-before-kill t)
;; replace yes and no with y and n
(defalias 'yes-or-no-p 'y-or-n-p)
;; solve company yasnippet conflicts
(defun company-yasnippet-or-completion ()
  "Solve company yasnippet conflicts."
  (interactive)
  (let ((yas-fallback-behavior
         (apply 'company-complete-common nil)))
    (yas-expand)))

(add-hook 'company-mode-hook
          (lambda ()
            (substitute-key-definition
             'company-complete-common
             'company-yasnippet-or-completion
             company-active-map)))
(provide 'init-preload-local)
