(use-package python
  :defer t
  :mode (".py\\'" . python-mode)
  :config
  (progn
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     "'"  'run-python
     "sb" 'python-shell-send-buffer
     "sf" 'python-shell-send-defun
     "sr" 'python-shell-send-region
     "ss" 'python-shell-send-string)))

(use-package anaconda-mode
  :ensure t
  :defer t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     "hh" 'anaconda-mode-show-doc
     "ga" 'anaconda-mode-find-assignments
     "gb" 'anaconda-mode-go-back
     "gu" 'anaconda-mode-find-references
     )))

(use-package company-anaconda
  :ensure t
  :defer t
  :after 'anaconda-mode
  :init
  (progn
    (add-to-list 'company-backend 'company-anaconda)
    (add-hook 'python-mode-hook 'anaconda-mode)))

(use-package yapfify
  :ensure t
  :diminish yapf-mode
  :defer t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     "=" 'yapfify-buffer))
  :config
  (progn
    (add-hook 'python-mode-hook 'yapf-mode)))
(provide 'init-python)
