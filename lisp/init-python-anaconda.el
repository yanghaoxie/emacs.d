(use-package anaconda-mode
  :ensure t
  :diminish anaconda-mode
  :defer t
  :after python
  :init
  (progn
    (my/leader-keys-major-mode
      :keymaps 'python-mode-map
      :major-modes t
      "h" '(:ignore t :which-key "help")
      "hh" 'anaconda-mode-show-doc
      "g" '(:ignore t :which-key "goto")
      "ga" 'anaconda-mode-find-assignments
      "gb" 'anaconda-mode-go-back
      "gu" 'anaconda-mode-find-references
      "gd" 'anaconda-mode-find-definitions
      "gD" 'anaconda-mode-find-definitions-other-window)
    (add-hook 'python-mode-hook 'anaconda-mode)
    (add-hook 'python-mode-hook 'anaconda-eldoc-mode)))

(use-package company-anaconda
  :ensure t
  ;; :after (company anaconda)
  :init
  (progn
    (add-hook 'python-mode-hook
	      (lambda ()
		(add-to-list (make-local-variable 'company-backends) '(company-anaconda company-capf company-dabbrev))))
    (add-hook 'inferior-python-mode-hook
	      (lambda ()
		(add-to-list (make-local-variable 'company-backends) '(company-anaconda company-capf company-dabbrev))))
    ))

(provide 'init-python-anaconda)
