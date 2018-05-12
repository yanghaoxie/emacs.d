;;(require 'fill-column-indicator)
;; set different value for different mode
(add-hook 'org-mode-hook
	  (lambda ()
	    (set-fill-column 70)))
(add-hook 'prog-mode-hook
	  (lambda ()
	    (set-fill-column 79)))
;; (setq fci-rule-column 70)
(setq fci-rule-color "gray90")
(setq fci-rule-width 1)
(setq fci-rule-use-dashes t)
(setq fci-dash-pattern 0.4)

;; (add-hook 'prog-mode-hook 'fci-mode)
;; solve fci mode conflicts with company mode
(defvar-local company-fci-mode-on-p nil)

(defun company-turn-off-fci (&rest ignore)
  (when (boundp 'fci-mode)
    (setq company-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

(defun company-maybe-turn-on-fci (&rest ignore)
  (when company-fci-mode-on-p (fci-mode 1)))

(add-hook 'company-completion-started-hook 'company-turn-off-fci)
(add-hook 'company-completion-finished-hook 'company-maybe-turn-on-fci)
(add-hook 'company-completion-cancelled-hook 'company-maybe-turn-on-fci)

;; solce fci mode conflicts with pyim
(defvar-local pyim-fci-mode-on-p nil)
(defun pyim-turn-off-fci (&rest ignore)
  (when (boundp 'fci-mode)
    (setq pyim-fci-mode-on-p fci-mode)
    (when fci-mode (fci-mode -1))))

;; (defun pyim-maybe-turn-on-fci (&rest ignore)
  ;; (when pyim-fci-mode-on-p (fci-mode 1)))
;; (add-hook 'pyim-active-hook 'pyim-turn-off-fci)
;; (add-hook 'pyim-page-select-finish-hook 'pyim-maybe-turn-on-fci)
;; (advice-add 'pyim-tooltip-show :before #'pyim-turn-off-fci)
;; (advice-add 'pyim-terminate-translation :around #'pyim-maybe-turn-on-fci)
(defun my-pyim-tooltip-show (orig-func string position)
  ;; (pyim-turn-off-fci)
  ;; (pyim-turn-off-fci)
  (funcall orig-func string position)
  (message "turn off fci"))
(advice-add 'pyim-tooltip-show :around #'my-pyim-tooltip-show)

(defun my-pyim-terminate-translation  (orig-func)
  (funcall orig-func )
  ;;(pyim-turn-on-fci)
  ;; (pyim-maybe-turn-on-fci)
  (fci-mode 1)
  (message "turn on fci"))

(advice-add 'pyim-terminate-translation :around #'my-pyim-terminate-translation)
(provide 'init-fill-column-indicator)
