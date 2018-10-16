(use-package hide-mode-line
  :ensure t
  :init
  (my/leader-keys
    "tm" 'my/toggle-hide-mode-line))

;;;###autoload
(defun my/toggle-hide-mode-line ()
  (interactive)
  (hide-mode-line-mode (if hide-mode-line-mode -1 +1))
  (unless hide-mode-line-mode
    (redraw-display)))

(provide 'hide-mode-line)
