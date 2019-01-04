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
  :config
  (spaceline-spacemacs-theme)
  (spaceline-compile))
(provide 'init-spaceline)
