(use-package prescient
  :ensure t
  :config
  (progn
    (prescient-persist-mode t)))

(use-package company-prescient
  :ensure t
  :after company
  :config
  (progn
    (company-prescient-mode t)))

(use-package ivy-prescient
  :ensure t
  :init
  (progn
    (ivy-prescient-mode t)))

(provide 'init-prescient)
