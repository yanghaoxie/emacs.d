(use-package flycheck
  :ensure t
  :defer t
  :init
  (my/leader-keys
    "ts" 'my/toggle-syntax-checking)
  :config
  (setq flycheck-display-errors-delay 0.2)
  (my/leader-keys
    "eb" 'flycheck-buffer
    "ec" 'flycheck-clear
    "eh" 'flycheck-describe-checker
    "es" 'flycheck-select-checker
    "eS" 'flycheck-set-checker-executable
    "ev" 'flycheck-verify-setup
    "ey" 'flycheck-copy-errors-as-kill
    "ex" 'flycheck-explain-error-at-point
    ;; navigation
    "en" 'flycheck-next-error
    "ep" 'flycheck-previous-error
    "el" 'flycheck-list-errors)
  (progn
    ;; Custom fringe indicator
    (when (and (fboundp 'define-fringe-bitmap)
	       ;; (not syntax-checking-use-original-bitmaps)
	       )
      (define-fringe-bitmap 'my-flycheck-fringe-indicator
	(vector #b00000000
		#b00000000
		#b00000000
		#b00000000
		#b00000000
		#b00000000
		#b00000000
		#b00011100
		#b00111110
		#b00111110
		#b00111110
		#b00011100
		#b00000000
		#b00000000
		#b00000000
		#b00000000
		#b00000000)))
    (let ((bitmap 'my-flycheck-fringe-indicator
		  ;; (if syntax-checking-use-original-bitmaps
		  ;;            'flycheck-fringe-bitmap-double-arrow
		  ;;   'my-flycheck-fringe-indicator)
		  ))
      (flycheck-define-error-level 'error
	:severity 2
	:overlay-category 'flycheck-error-overlay
	:fringe-bitmap bitmap
	:error-list-face 'flycheck-error-list-error
	:fringe-face 'flycheck-fringe-error)
      (flycheck-define-error-level 'warning
	:severity 1
	:overlay-category 'flycheck-warning-overlay
	:fringe-bitmap bitmap
	:error-list-face 'flycheck-error-list-warning
	:fringe-face 'flycheck-fringe-warning)
      (flycheck-define-error-level 'info
	:severity 0
	:overlay-category 'flycheck-info-overlay
	:fringe-bitmap bitmap
	:error-list-face 'flycheck-error-list-info
	:fringe-face 'flycheck-fringe-info))))

(use-package flycheck-posframe
  :if (version<= "26.1" emacs-version)
  :ensure t
  :after flycheck
  :config
  (add-hook 'flycheck-mode-hook #'flycheck-posframe-mode)
  (flycheck-posframe-configure-pretty-defaults))
(provide 'init-flycheck)
