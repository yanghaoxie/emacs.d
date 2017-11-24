;;(require 'fill-column-indicator)
(setq fci-rule-column 79)
(setq fci-rule-color "lightgray")
(setq fci-rule-width 1)
(setq fci-rule-use-dashes t)
(setq fci-dash-pattern 0.4)

(add-hook 'prog-mode-hook 'fci-mode)
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
(provide 'init-fill-column-indicator)
