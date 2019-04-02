(use-package golden-ratio-scroll-screen
  :ensure t
  :config
  (global-set-key [remap evil-scroll-page-up] 'golden-ratio-scroll-screen-down)
  (global-set-key [remap evil-scroll-page-down] 'golden-ratio-scroll-screen-up)
  )
(provide 'init-golden-scroll-screen)
