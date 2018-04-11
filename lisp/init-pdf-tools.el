(pdf-tools-install)
;; diable linum-mode in pdf-view-mode
(add-hook 'pdf-view-mode-hook (lambda() (linum-mode -1)))
;;turn off cua so copy works
(add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
;; more fine-grained zooming
(setq pdf-view-resize-factor 1.1)
(setq pdf-view-continuous 1)
;; enbale auto-revert-mode to auto revert pdf files
(add-hook 'pdf-view-mode-hook 'auto-revert-mode)
(setq auto-revert-interval 0.5)
(provide 'init-pdf-tools)
