;; -*- lexical-binding: t -*-

;;; This file bootstraps the configuration, which is divided into
;;; a number of other files.

(let ((minver "24.3"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "24.5")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

;;add by yanghaoxie
(add-to-list 'load-path "~/.emacs.d/site-lisp")
(add-to-list 'load-path "~/.emacs.d/site-lisp/bookmark-plus")

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;;----------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;----------------------------------------------------------------------------
(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'after-init-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))
;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(require 'init-utils)
 (require 'init-site-lisp) ;; Must come before elpa, as it may provide package.el
;; Calls (package-initialize)
(require 'init-elpa)      ;; Machinery for installing required packages
(require 'init-exec-path) ;; Set up $PATH

;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-preload-local.el"
;;----------------------------------------------------------------------------
(require 'init-preload-local nil t)

;;----------------------------------------------------------------------------
;; Load configs for specific features and modes
;;----------------------------------------------------------------------------
(require 'init-use-package)
(require 'init-evil)
;; packages in "site-lisp"
;; (require 'fill-column-indicator)
(require 'evil-textobj-line)
;;(require 'fish-completion)

;;(require 'init-use-package)
(require 'custom);; file added by Custom
;;(require 'init-evil)
(require 'init-ace-window)
(require 'init-airline-themes)
(require 'init-anzu)
(require 'init-auctex)
;;(require 'init-auto-install-packages)
(require 'init-avy)
(require 'init-bash-completion)
(require 'init-column-number)
(require 'init-company)
(require 'init-desktop-save)
(require 'init-elpy)
(require 'init-eshell)
;;(require 'init-eshell-z)
(require 'init-pdf-tools)
(require 'init-evil-anzu)
(require 'init-evil-escape)
(require 'init-evil-nerd-commenter)
(require 'init-evil-snipe)
(require 'init-evil-surround)
(require 'init-expand-region)
(require 'init-fill-column-indicator) 
(require 'init-flycheck)
(require 'init-flyspell)
(require 'init-general)
(require 'init-global-linum)
(require 'init-golden-ratio-scroll-screen)
(require 'init-helm)
(require 'init-highlight-indentation)
(require 'init-magit)
(require 'init-neotree)
(require 'init-org)
(require 'init-org-ref)
(require 'init-powerline)
(require 'init-preload-local)
(require 'init-rainbow-delimiters)
(require 'init-reftex)
(require 'init-rich-minority)
(require 'init-smartparens)
(require 'init-sudo-edit)
;; (require 'init-window-numbering)
;; (require 'init-yagist)
(require 'init-yasnippet)
;; (require 'init-diminish)
;; (require 'init-electric-pair-mode)
;; (require 'init-evil-smartparens)
;; (require 'init-gnus)
;; (require 'init-highlight-indent-guides)
;;(require 'init-jedi)
(require 'init-ggtags)
;; (require 'init-helm-gtags)
;; (require 'init-evil-magit)
(require 'init-fish-completion)
(require 'init-bookmark-plus)
(require 'init-company-quickhelp)
(require 'init-pyim)
;; (require 'init-ivy-posframe)
(require 'init-langtool)
(require 'init-redtick)
(require 'init-whitespace-mode)
(require 'init-paradox)
(require 'init-artbollocks)
(require 'init-helm-bibtex)
(require 'init-elfeed)
(require 'init-evil-exchange)
;; (require 'init-company-flx)
;; (require 'init-helm-flx)
(require 'init-eyebrowse)
(require 'init-smart-mode-line)
(require 'init-winum)
;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(require 'server)
(unless (server-running-p)
  (server-start))


;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))


;;----------------------------------------------------------------------------
;; Allow users to provide an optional "init-local" containing personal settings
;;----------------------------------------------------------------------------
(require 'init-local nil t)


;;----------------------------------------------------------------------------
;; Locales (setting them earlier in this file doesn't work in X)
;;----------------------------------------------------------------------------
(require 'init-locales)


(when (maybe-require-package 'uptimes)
  (add-hook 'after-init-hook (lambda () (require 'uptimes))))


(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
