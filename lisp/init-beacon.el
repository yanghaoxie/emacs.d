(use-package beacon
  :ensure t
  :diminish beacon-mode
  :config
  (setq beacon-blink-when-window-scrolls nil
	beacon-dont-blink-major-modes '(t pdf-view-mode)
	beacon-size 10)
  (beacon-mode 1)
  )
(provide 'init-beacon)
