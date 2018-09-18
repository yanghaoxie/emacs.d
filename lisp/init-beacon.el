(use-package beacon
  :ensure t
  :diminish beacon-mode
  :config
  (setq beacon-blink-when-window-scrolls nil)
  (setq beacon-dont-blink-major-modes '(t pdf-view-mode))
  (beacon-mode 1)
  )
(provide 'init-beacon)
