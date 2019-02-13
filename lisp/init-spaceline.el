(use-package spaceline
  :ensure t
  :init
  (progn
    (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
	  powerline-default-separator 'slant
	  spaceline-minor-modes-p nil
	  spaceline-purpose-p t
	  spaceline-purpose-hide-if-not-dedicated t
	  spaceline-buffer-encoding-abbrev-p nil
	  spaceline-window-numbers-unicode nil
	  spaceline-workspace-numbers-unicode nil
	  spaceline-input-method-p nil
	  spaceline-major-mode-p nil))
  :config
  (spaceline-compile)
  (spaceline-helm-mode t)
  (spaceline-toggle-buffer-encoding-off)
  (spaceline-toggle-minor-modes-off)
  (spaceline-toggle-buffer-encoding-abbrev-off)
  (spaceline-toggle-major-mode-off)
  (spaceline-define-segment my/pomodoro
    (when (featurep 'pomodoro)
      pomodoro-mode-line-string))
  (spaceline-spacemacs-theme '(my/pomodoro :when active :tight t))
  )

;; (use-package spaceline
;;   :ensure t
;;   :pin melpa-stable)

;; (use-package all-the-icons
;;   ;; :ensure t
;;   :load-path "~/Program/all-the-icons.el"
;; ;;  :quelpa (all-the-icons :fecher github :repo "yanghaoxie/all-the-icons.el")
;;   :config
;;   (setq all-the-icons-color-icons t))

;; (use-package spaceline-all-the-icons
;;   ;; :quelpa (spaceline-all-the-icons :fecher github :repo "yanghaoxie/spaceline-all-the-icons.el")
;;   :load-path "~/Program/spaceline-all-the-icons"
;;   :after (spaceline all-the-icons)
;;   :config
;;   (setq spaceline-highlight-face-func 'spaceline-highlight-face-evil-state
;; 	spaceline-all-the-icons-icon-set-modified 'circle
;; 	spaceline-all-the-icons-projectile-p nil
;; 	spaceline-all-the-icons-slim-render t
;; 	spaceline-all-the-icons-separator-type 'none
;; 	spaceline-all-the-icons-separator-scale 1.1
;; 	spaceline-all-the-icons-time-p nil
;; 	spaceline-all-the-icons-icon-set-eyebrowse-slot 'string
;; 	spaceline-all-the-icons-icon-set-window-numbering 'string
;; 	spaceline-all-the-icons-process-p nil
;; 	)
;;   (spaceline-all-the-icons--setup-anzu)
;;   (spaceline-all-the-icons--setup-paradox)
;;   (spaceline-all-the-icons-theme))

(provide 'init-spaceline)
