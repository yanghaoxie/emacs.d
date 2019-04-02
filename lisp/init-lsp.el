(use-package lsp-mode
  :ensure t
  :commands lsp
  :diminish lsp-mode
  :commands lsp
  :hook (python-mode)
  :config
  (progn
    (require 'lsp-clients)
    (setq lsp-message-project-root-warning t
	  lsp-prefer-flymake nil
	  lsp-restart 'ignore))
  (lsp))

(use-package company-lsp
  :ensure t
  :after (company lsp-mode)
  :init
  (progn
    (add-hook 'python-mode-hook
    	      (lambda ()
    		(add-to-list (make-local-variable 'company-backends) '(company-lsp company-dabbrev-code)))))
  :config
  (progn
    (setq company-lsp-enable-recompletion t
	  company-lsp-async t
	  company-lsp-cache-candidates nil)))

(use-package lsp-ui
  :ensure t
  :after lsp-mode
  :init
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)
  :general
  (:keymaps 'lsp-ui-peek-mode-map
	    "h" 'lsp-ui-peek--select-prev-file
	    "j" 'lsp-ui-peek--select-next
	    "k" 'lsp-ui-peek--select-prev
	    "l" 'lsp-ui-peek--select-next-file)
  (my/normal-keys
    :keymaps 'lsp-ui-imenu-mode-map
    "h" 'lsp-ui-imenu--prev-kind
    "l" 'lsp-ui-imenu--next-kind
    "d" 'lsp-ui-imenu--view
    "M-d" 'lsp-ui-imenu--visit
    "q" 'lsp-ui-imenu--kill)
  :config
  (progn
    (my/leader-keys-major-mode
      :keymaps 'lsp-ui-mode-map
      "pd" 'lsp-ui-peek-find-definitions
      "pr" 'lsp-ui-peek-find-references)
    (setq lsp-ui-sideline-delay 0.2
	  lsp-ui-peek-always-show t
	  lsp-ui-doc-use-childframe t
	  )
    (lsp-ui-sideline-mode -1)))

(provide 'init-lsp)
