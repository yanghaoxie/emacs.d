(use-package pdf-tools
    :ensure t
    :defer t
    :mode (("\\.pdf\\'" . pdf-view-mode))
    :config
    (progn
      (pdf-tools-install)
      (add-hook 'pdf-view-mode-hook (lambda() (display-line-numbers-mode -1)))
      ;;turn off cua so copy works
      (add-hook 'pdf-view-mode-hook (lambda () (cua-mode 0)))
      ;; enbale auto-revert-mode to auto revert pdf files
      (add-hook 'pdf-view-mode-hook 'auto-revert-mode)
      (setq auto-revert-interval 0.5))
    :general
    (:states '(normal)
     :keymaps 'pdf-view-mode-map
     ;; navigation
     "j" '(lambda() (interactive) (pdf-view-next-line-or-next-page 35))
     "J" '(lambda() (interactive) (pdf-view-next-line-or-next-page 10))
     "k" '(lambda() (interactive) (pdf-view-previous-line-or-previous-page 35))
     "K" '(lambda() (interactive) (pdf-view-previous-line-or-previous-page 10))
     "h" '(lambda() (interactive) (image-backward-hscroll 20))
     "l" '(lambda() (interactive) (image-forward-hscroll 20))
     "u" 'pdf-view-scroll-down-or-previous-page
     "d" 'pdf-view-scroll-up-or-next-page
     "gg"  'pdf-view-first-page
     "G"  'pdf-view-last-page
     ;; scale/fit
     "w" 'pdf-view-fit-width-to-window
     "h" 'pdf-view-fit-height-to-window
     "p" 'pdf-view-fit-page-to-window
     ;; Search
     "/" 'isearch-forward
     "?" 'isearch-backward
     ;; Actions
     "r"   'pdf-view-revert-buffer
     "o"   'pdf-links-action-perform
     "O"   'pdf-outline
     "zr"  'pdf-view-scale-reset)
     (my/leader-keys-major-mode
      :states 'normal
      :keymaps 'pdf-view-mode-map
        ;; Slicing image
        "sm" 'pdf-view-set-slice-using-mouse
        "sb" 'pdf-view-set-slice-from-bounding-box
        "sr" 'pdf-view-reset-slice
        ;; Annotations
        "aD" 	'pdf-annot-delete
        "at" 	'pdf-annot-attachment-dired
        "ah" 	'pdf-annot-add-highlight-markup-annotation
        "al" 	'pdf-annot-list-annotations
        "am" 	'pdf-annot-add-markup-annotation
        "ao" 	'pdf-annot-add-strikeout-markup-annotation
        "as" 	'pdf-annot-add-squiggly-markup-annotation
        "at" 	'pdf-annot-add-text-annotation
        "au" 	'pdf-annot-add-underline-markup-annotation
        ;; Fit image to window
        "fw" 'pdf-view-fit-width-to-window
        "fh" 'pdf-view-fit-height-to-window
        "fp" 'pdf-view-fit-page-to-window
        ;; Other
        "ss" 'pdf-occur
        "p" 'pdf-misc-print-document
        "O" 'pdf-outline
        "n" 'pdf-view-midnight-minor-mode)
     )
(provide 'init-pdf-tools)
