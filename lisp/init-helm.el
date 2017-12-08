(require 'helm-config)
(helm-mode t)
(setq helm-M-x-fuzzy-match t) ;; optional fuzzy matching for helm-M-xopen
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t);; fuzzy matching for helm-mini
(helm-autoresize-mode t)  ;; autoresize mode
(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(setq helm-split-window-in-side-p t
      helm-echo-input-in-header-line t
      helm-ff-file-name-history-use-recentf t)

(defun spacemacs//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))
(add-hook 'helm-minibuffer-set-up-hook
          'spacemacs//helm-hide-minibuffer-maybe)
;; key binding
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(provide 'init-helm)
