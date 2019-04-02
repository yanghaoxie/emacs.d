(use-package auto-package-update
  :ensure t
  :config
  (setq auto-package-update-delete-old-versions t
	auto-package-update-prompt-before-update t
	auto-package-update-hide-results t)
  (auto-package-update-maybe))

(provide 'init-auto-package-update)
