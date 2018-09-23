(use-package eyebrowse
    :ensure t
    :defer t
    :init
    (eyebrowse-mode)
    :general
    (:keymaps 'override
     :states '(normal visual)
     "gt" 'eyebrowse-next-window-config
     "gT" 'eyebrowse-prev-window-config
     "gc" 'eyebrowse-close-window-config
     "gr" 'eyebrowse-create-window-config
     "gl" 'eyebrowse-last-window-config
     "g0" 'eyebrowse-switch-to-window-config-0
     "g1" 'eyebrowse-switch-to-window-config-1
     "g2" 'eyebrowse-switch-to-window-config-2
     "g3" 'eyebrowse-switch-to-window-config-3
     "g4" 'eyebrowse-switch-to-window-config-4
     "g5" 'eyebrowse-switch-to-window-config-5
     "g6" 'eyebrowse-switch-to-window-config-6
     "g7" 'eyebrowse-switch-to-window-config-7
     "g8" 'eyebrowse-switch-to-window-config-8
     "g9" 'eyebrowse-switch-to-window-config-9
))
(provide 'init-eyebrow)
