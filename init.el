;; -*- coding: utf-8 -*-
;(defvar best-gc-cons-threshold gc-cons-threshold "Best default gc threshold value. Should't be too big.")


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver "24.4"))
  (when (version< emacs-version minver)
    (error "This config requires Emacs v%s or higher" minver)))

(defvar best-gc-cons-threshold 4000000 "Best default gc threshold value. Should't be too big.")
;; don't GC during startup to save time
(setq gc-cons-threshold most-positive-fixnum)

(setq emacs-load-start-time (current-time))

;; {{ emergency security fix
;; https://bugs.debian.org/766397
(eval-after-load "enriched"
  '(defun enriched-decode-display-prop (start end &optional param)
     (list start end)))
;; }}
;;----------------------------------------------------------------------------
;; Which functionality to enable (use t or nil for true and false)
;;----------------------------------------------------------------------------
(setq *is-a-mac* (eq system-type 'darwin))
(setq *win64* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *emacs24* (and (not (featurep 'xemacs)) (or (>= emacs-major-version 24))) )
(setq *emacs25* (and (not (featurep 'xemacs)) (or (>= emacs-major-version 25))) )
(setq *no-memory* (cond
                   (*is-a-mac*
                    (< (string-to-number (nth 1 (split-string (shell-command-to-string "sysctl hw.physmem")))) 4000000000))
                   (*linux* nil)
                   (t nil)))

;; emacs 24.3-
(setq *emacs24old*  (or (and (= emacs-major-version 24) (= emacs-minor-version 3))
                        (not *emacs24*)))

;; @see https://www.reddit.com/r/emacs/comments/55ork0/is_emacs_251_noticeably_slower_than_245_on_windows/
;; Emacs 25 does gc too frequently
(when *emacs25*
  ;; (setq garbage-collection-messages t) ; for debug
  (setq gc-cons-threshold (* 64 1024 1024) )
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect))

(defmacro local-require (pkg)
  `(load (file-truename (format "~/.emacs.d/site-lisp/%s/%s" ,pkg ,pkg))))

(defmacro require-init (pkg)
  `(load (file-truename (format "~/.emacs.d/lisp/%s" ,pkg))))

;; *Message* buffer should be writable in 24.4+
(defadvice switch-to-buffer (after switch-to-buffer-after-hack activate)
  (if (string= "*Messages*" (buffer-name))
      (read-only-mode -1)))

;; @see https://www.reddit.com/r/emacs/comments/3kqt6e/2_easy_little_known_steps_to_speed_up_emacs_start/
;; Normally file-name-handler-alist is set to
;; (("\\`/[^/]*\\'" . tramp-completion-file-name-handler)
;; ("\\`/[^/|:][^/|]*:" . tramp-file-name-handler)
;; ("\\`/:" . file-name-non-special))
;; Which means on every .el and .elc file loaded during start up, it has to runs those regexps against the filename.


(let ((file-name-handler-alist nil))
  ;; package
  (require-init 'init-elpa)
  (require-init 'init-pre-load)
  (require-init 'init-paradox)
  ;; auto-compile
  (require-init 'init-auto-compile)
  ;; autoload
  (require-init 'init-autoload)
  ;; defaults
  (require-init 'init-defaults)
  ;; start up profiler
  (require-init 'init-benchmark)
  ;; ui
  (require-init 'init-gui-frames)
  (require-init 'init-beacon)
  (require-init 'init-rainbow-delimiters)
  (require-init 'init-highlight-parentheses)
  (require-init 'init-highlight-indentation)
  (require-init 'init-highlight-numbers)
  (require-init 'init-highlight-symbol)
  (require-init 'init-color-identifiers-mode)
  (require-init 'init-which-key)
  (require-init 'init-popwin)
  (require-init 'init-zoom-frm)
  (require-init 'init-hide-mode-line)
  (require-init 'init-window-purpose)
  ;; (require-init 'init-smart-mode-line)
  ;; (require-init 'init-spaceline)
  (require-init 'init-modeline)
  ;; (require-init 'init-doom-modeline)
  ;; universal
  (require-init 'init-restart-emacs)
  (require-init 'init-undo-tree)
  (require-init 'init-expand-region)
  (require-init 'init-sudo-edit)
  (require-init 'init-smartparens)
  (require-init 'init-evil-iedit-state)
  (require-init 'init-move-text)
  ;; theme
  (require-init 'init-theme)
  ;; vim
  (require-init 'init-evil)
  ;; workspaces
  (require-init 'init-eyebrowse)
  ;; project
  (require-init 'init-project)
  ;; navigation
  ;; (require-init 'init-window-numbering)
  (require-init 'init-avy)
  (require-init 'init-winum)
  (require-init 'init-golden-scroll-screen)
  (require-init 'init-ace-link)
  (require-init 'init-ace-window)
  ;; (require-init 'init-smartscan)
  ;; completion
  (require-init 'init-ivy)
  (require-init 'init-company)
  (require-init 'init-prescient)
  (require-init 'init-yasnippet)
  ;; source control
  (require-init 'init-git)
  ;; checkers
  (require-init 'init-flycheck)
  (require-init 'init-flyspell)
  ;; languages
  (require-init 'init-org)
  (require-init 'init-elisp)
  (require-init 'init-latex)
  (require-init 'init-python)
  ;; writting
  (require-init 'init-academic-phrases)
  (require-init 'init-artbollocks)
  (require-init 'init-synosaurus)
  (require-init 'init-langtool)
  (require-init 'init-wordnut)
  (require-init 'init-bing-dict)
  ;; tools
  (require-init 'init-ranger)
  (require-init 'init-pdf-tools)
  (require-init 'init-keyfreq)
  (require-init 'init-elfeed)
  (require-init 'init-shell)
  (require-init 'init-ledger)
  (require-init 'init-atomic-chrome)
  ;; chinese
  (require-init 'init-pyim)



  (add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
  (when (require 'time-date nil t)
    (message "Emacs startup time: %d seconds."
             (time-to-seconds (time-since emacs-load-start-time))))

  ;; @see https://github.com/hlissner/doom-emacs/wiki/FAQ
  ;; Adding directories under "~/.emacs.d/site-lisp/" to `load-path' slows
  ;; down all `require' statement. So we do this at the end of startup
  ;; Besides, no packages from ELPA is dependent "~/.emacs.d/site-lisp" now.
  (require-init 'init-site-lisp)

  ;; my personal setup, other major-mode specific setup need it.
  ;; It's dependent on init-site-lisp.el
  (if (file-exists-p "~/.custom.el") (load-file "~/.custom.el"))
  )

;; @see https://www.reddit.com/r/emacs/comments/4q4ixw/how_to_forbid_emacs_to_touch_configuration_files/
(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(setq gc-cons-threshold best-gc-cons-threshold)
;;; Local Variables:
;;; no-byte-compile: t
;;; End:
(put 'erase-buffer 'disabled nil)
