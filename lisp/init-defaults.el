;; settings

;; replace "yes" and "no" by "y" and "n"
(defalias 'yes-or-no-p 'y-or-n-p)
;; save desktop
(desktop-save-mode t)
(setq desktop-restore-eager 5
      desktop-lazy-verbose nil)
;;display-time-mode
(setq display-time-24hr-format t
      display-time-default-load-average nil
      display-time-day-and-date t)
(display-time-mode t)
;;
(column-number-mode t)
(size-indication-mode t)
(blink-cursor-mode 0)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
;; auto save
(setq  auto-save-default t
       auto-save-timeout 20
       auto-save-interval 20)
(defvar emacs-autosave-directory
  (concat user-emacs-directory "autosaves/"))

(unless (file-exists-p emacs-autosave-directory)
    (make-directory emacs-autosave-directory))

(setq auto-save-file-name-transforms
      `((".*" ,emacs-autosave-directory t)))
;; backup
(setq backup-directory-alist '(("." . "~/.emacs.d/backups"))
      kept-new-versions 10
      kept-old-versions 0
      delete-old-versions t
      backup-by-copying t
      vc-make-backup-files t)
;; font
(set-face-attribute 'default nil :font "Hack")
;; text-scale
(defhydra hydra-text-scale ()
  "text-scale"
  ("i" text-scale-increase "in")
  ("o" text-scale-decrease "out")
  ("0" (text-scale-set 0) "resert")
  ("q" nil "quit"))
(my/leader-keys
 "xz" 'hydra-text-scale/body)

;; window-scale
(defhydra hydra-window-scale ()
  "window-scale"
  ("i" (lambda () (interactive) (enlarge-window-horizontally 10)) "in")
  ("o" (lambda () (interactive) (shrink-window-horizontally 10)) "out")
  ("0" balance-windows "resert")
  ("q" nil "quit"))
(my/leader-keys
 "wz" 'hydra-window-scale/body)

;; build-in modes
(use-package eldoc
    :diminish eldoc-mode)

(use-package electric-pair-mode
    :defer t
    :init
    (progn
      (electric-pair-mode t)))

(use-package display-line-numbers
    :init
    (setq display-line-numbers-type 'visual)
    :config
    ;; (add-hook 'prog-mode-hook '(lambda () (display-line-numbers-mode 1))))
    (global-display-line-numbers-mode 1))
    ;; (add-hook 'prog-mode-hook #'global-display-line-numbers-mode))

(use-package prettify-symbols-mode
  :defer t
  :init
  (setq prettify-symbols-unprettify-at-point 'right-edge)
  (global-prettify-symbols-mode))

(use-package recentf
  :commands recentf-mode
  :config
  (progn
    (setq recentf-max-saved-items 25)
    (recentf-mode 1)))

(use-package autorevert
  :defer t
  :diminish auto-revert-mode
  :init
  (setq auto-revert-interval 0.5)
  (add-hook 'pdf-view-mode-hook 'auto-revert-mode)
  )

(use-package server
  :commands server-running-p
  :config
  (unless (server-running-p)
    (server-start)))

(use-package winner
  :init
  (my/leader-keys
    "wu" 'winner-undo
    "wU" 'winner-redo)
  :config
  (winner-mode))
;; key bindings

(my/leader-keys
  "!" 'shell-command)

;; applications --------------------------------------------------------------
(my/leader-keys
 "au" 'undo-tree-visualize)
;; buffer --------------------------------------------------------------------
(my/leader-keys
 "bd" 'my/kill-this-buffer
 "bn" 'next-buffer
 "bp" 'previous-buffer
 "br" 'revert-buffer
 "TAB" 'my/alternate-buffer
 "bx" 'kill-buffer-and-window
 )
;; file ----------------------------------------------------------------------
(my/leader-keys
 "fs" 'save-buffer)
;; frame
(my/leader-keys
 "Fd" 'delete-frame
 "Fn" 'make-frame
 "Fo" 'other-frame)
;; help ----------------------------------------------------------------------
(my/leader-keys
 "hdb" 'describe-bindings
 "hdc" 'describe-char
 "hdf" 'describe-function
 "hdk" 'describe-key
 "hdm" 'describe-mode
 "hdp" 'describe-package
 "hdt" 'describe-theme
 "hdv" 'describe-variable
 "hn"  'view-emacs-news
)
;; quit ---------------------------------------------------------------------
(my/leader-keys
 "qs" 'save-buffers-kill-emacs
 "qr" 'restart-emacs
 "qd" 'my/restart-emacs-debug-init)
;; window -------------------------------------------------------------------
(my/leader-keys
 "wv" 'split-window-right
 "wV" 'split-window-right-and-focus
 "ws" 'split-window-below
 "wS" 'split-window-below-and-focus
 "w=" 'balance-windows-area
 "wm" 'my/toggle-maximize-buffer
 "wd" 'delete-window)
;; text
(my/leader-keys
  "xp" 'clipboard-yank
  "xy" 'clipboard-kill-ring-save
  "xc" 'clipboard-kill-region)
(provide 'init-defaults)
