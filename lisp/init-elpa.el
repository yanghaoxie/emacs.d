(require 'package)


;;; Install into separate package dirs for each Emacs version, to prevent bytecode incompatibility
(let ((versioned-package-dir
       (expand-file-name (format "elpa-%s.%s" emacs-major-version emacs-minor-version)
                         user-emacs-directory)))
  (setq package-user-dir versioned-package-dir))



;;; Standard package repositories

(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;;(add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  (add-to-list 'package-archives (cons "melpa" (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")) t)
  ;; Official MELPA Mirror, in case necessary.
  ;;(add-to-list 'package-archives (cons "melpa-mirror" (concat proto "://www.mirrorservice.org/sites/melpa.org/packages/")) t)
  (if (< emacs-major-version 24)
      ;; For important compatibility libraries like cl-lib
;;      (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))
      (add-to-list 'package-archives '("gnu" . (concat proto "://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")))
    (unless no-ssl
      ;; Force SSL for GNU ELPA
     ;; (setcdr (assoc "gnu" package-archives) "https://elpa.gnu.org/"))))
      (setcdr (assoc "gnu" package-archives) "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/"))))

;; We include the org repository for completeness, but don't normally
;; use it.
;;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/"))


;; ;;; Fire up package.el

(setq package-enable-at-startup nil)
(package-initialize)



(provide 'init-elpa)
