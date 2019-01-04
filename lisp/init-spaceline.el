(use-package spaceline
  :ensure t
  :pin melpa-stable
  ;; :init
  ;; (progn
  ;;   (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
  ;; 	  powerline-default-separator 'slant
  ;; 	  spaceline-minor-modes-p nil
  ;; 	  spaceline-purpose-p t
  ;; 	  spaceline-purpose-hide-if-not-dedicated t
  ;; 	  spaceline-buffer-encoding-abbrev-p nil
  ;; 	  spaceline-window-numbers-unicode nil
  ;; 	  spaceline-workspace-numbers-unicode nil
  ;; 	  spaceline-input-method-p nil))
  ;; :config
  ;; (spaceline-spacemacs-theme)
  ;; (spaceline-compile)
  )

(use-package all-the-icons
  :ensure t)

(use-package spaceline-all-the-icons
  :after (spaceline all-the-icons)
  :config
  (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
	spaceline-all-the-icons-icon-set-modified 'circle
	spaceline-all-the-icons-projectile-p nil
	spaceline-all-the-icons-slim-render t
	spaceline-all-the-icons-separator-type 'none
	spaceline-all-the-icons-time-p nil
	spaceline-all-the-icons-icon-set-eyebrowse-slot 'string
	spaceline-all-the-icons-icon-set-window-numbering 'string)
  (spaceline-all-the-icons--setup-anzu)
  (spaceline-all-the-icons--setup-paradox)
  (spaceline-all-the-icons-theme))

(provide 'init-spaceline)
