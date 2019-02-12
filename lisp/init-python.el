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
      "M-o" 'ace-link)
    (defun my/company-comint-history (command &optional arg &rest ignore)
      "`company-mode' completion backend for comint history"
      (interactive (list 'interactive))
      (cl-case command
	(interactive (company-begin-backend 'company-comint-history))
	(prefix (company-grab-symbol))
	(candidates
	 (cl-remove-if-not
	  (lambda (c) (string-prefix-p arg c))
	  (ring-elements comint-input-ring)))
	(no-cache t)
	(duplicates t)))
    (add-hook 'inferior-python-mode-hook
	      (lambda ()
		(add-to-list (make-local-variable 'company-backends) '(my/company-comint-history company-files company-dabbrev-code))))
    ))

(use-package yapfify
  :ensure t
  :diminish yapf-mode
  :defer t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'python-mode-map
     "=" 'yapfify-buffer)))

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
