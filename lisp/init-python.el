(use-package python
  :defer t
  :mode (".py\\'" . python-mode)
  :config
  (progn
    (setq python-shell-interpreter "ipython3.5"
	  python-shell-interpreter-args "--simple-prompt")
    (add-hook 'python-mode-hook (lambda () (set-fill-column 79)))
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     :major-modes t
     "'"  'run-python
     "s" '(:ignore t :which-key "REPL")
     "sb" 'python-shell-send-buffer
     "sf" 'python-shell-send-defun
     "sr" 'python-shell-send-region
     "ss" 'python-shell-send-string
     "sz" 'python-shell-switch-to-shell)
    (my/all-states-keys
      :keymaps 'inferior-python-mode-map
      "M-o" 'ace-link)))

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

(use-package pyvenv
  :ensure t
  :defer t
  :after python
  :init
  (my/leader-keys-major-mode
    :keymaps 'python-mode-map
    "v" '(:ignore t :wk "virtualenv")
    "va" 'pyvenv-activate
    "vd" 'pyvenv-deactivate
    "vw" 'pyvenv-workon)
  )
(provide 'init-python)
