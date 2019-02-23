(use-package avy
  :ensure t
  :defer t
  :init
  (progn
    (setq avy-all-windows nil
	  avy-background t)
    (my/leader-keys
      "jj" 'avy-goto-char-timer
      "j M-j" 'my/avy-goto-char-timer-all-windows
      "jl" 'avy-goto-line
      "j M-l" 'my/avy-goto-line-all-windows
      "jw" 'avy-goto-word-or-subword-1
      "j M-w" 'my/avy-goto-word-or-subword-1-all-windows
      "jc" 'avy-goto-char
      "j M-c" 'my/avy-goto-char-all-windows))
  (my/leader-keys-major-mode
    :keymaps 'org-mode-map
    "jj" 'avy-org-goto-heading-timer)
  (my/leader-keys-extra
    "w" 'avy-goto-word-1
    "c" 'avy-goto-char
    "l" 'avy-goto-line)
  (global-set-key [remap evil-snipe-f] 'my/avy-goto-char-in-line-without-background))

;;;###autoload
(defun my/avy-goto-char-timer-all-windows ()
  (interactive)
  (let ((avy-all-windows t))
    (avy-goto-char-timer)))

;;;###autoload
(defun my/avy-goto-line-all-windows ()
  (interactive)
  (let ((avy-all-windows t))
    (avy-goto-line)))

;;;###autoload
(defun my/avy-goto-word-or-subword-1-all-windows ()
  (interactive)
  (let ((avy-all-windows t))
    (avy-goto-word-or-subword-1)))

;;;###autoload
(defun my/avy-goto-char-all-windows ()
  (interactive)
  (let ((avy-all-windows t))
    (call-interactively 'avy-goto-char)))

;;;###autoload
(defun my/avy-goto-char-in-line-without-background ()
  (interactive)
  (let ((avy-background nil))
    (call-interactively 'avy-goto-char-in-line)))

(provide 'init-avy)
