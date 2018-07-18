(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

(use-package use-package
  :ensure t)
(setq use-package-compute-statistics 1)
(use-package evil
  :ensure t
  :defer t
  :config
  (require 'init-evil))
;; (use-package airline-themes
  ;; :ensure t)
(use-package ace-window
  :ensure t
  :defer t
  :config
  (require 'init-ace-window))
(use-package anzu
  :ensure t
  ;; :defer t
  :config
  (require 'init-anzu))
(use-package auctex
  :ensure t
  :defer t
  :config
  (require 'init-auctex))
(use-package avy
  :ensure t
  :defer t
  :config
  (require 'init-avy))
(use-package bash-completion
  :ensure t
  :defer t
  :config
  (require 'init-bash-completion))
(use-package company
  :ensure t
  :defer t
  :config
  (require 'init-company))
(use-package elpy
  :ensure t
  :defer t
  :config
  (require 'init-elpy))
(use-package evil-anzu
  :ensure t
  :defer t
  :config
  (require 'init-evil-anzu))
(use-package evil-escape
  :ensure t
  :defer 5
  :config
  (require 'init-evil-escape))
(use-package evil-nerd-commenter
  :ensure t
  :defer t
  :config
  (require 'init-evil-nerd-commenter))
(use-package evil-snipe
  :ensure t
  :defer t
  :config
  (require 'init-evil-snipe))
(use-package evil-surround
  :ensure t
  :defer t
  :config
  (require 'init-evil-surround))
(use-package expand-region
  :ensure t
  :defer t
  :config
  (require 'init-expand-region))
(use-package fill-column-indicator
  :ensure t
  :defer t
  :config
  (require 'init-fill-column-indicator))
(use-package flycheck
  :ensure t
  :defer t
  :config
  (require 'init-flycheck))
(use-package flyspell
  :ensure t
  :defer t
  :config
  (require 'init-flyspell))
(use-package general
  :ensure t
  ;; :defer t
  :config
  (require 'init-general))
(use-package golden-ratio-scroll-screen
  :ensure t
  ;; :defer t
  :config
  (require 'init-golden-ratio-scroll-screen))
(use-package helm
  :ensure t
  :defer t
  :config
  (require 'init-helm))
(use-package highlight-indentation
  :ensure t
  :defer t
  :config
  (require 'init-highlight-indentation))
(use-package magit
  :ensure t
  :defer 5
  ;; :magic ("Magit" . magit-status-mode)
  :config
  (require 'init-magit))
(use-package evil-magit
  :ensure t
  :defer 5
  ;; :magic ("Magit" . magit-status-mode)
  :config
  (require 'init-evil-magit))
(use-package neotree
  :ensure t
  :defer t
  :config
  (require 'init-neotree))
;; (use-package org
;;   :ensure t
;;   :defer t
;;   :config
  ;; (require 'init-org))
(use-package org-ref
  :ensure t
  :defer t
  :config
  (require 'init-org-ref))
;; (use-package powerline
;;     :ensure t)
(use-package rainbow-delimiters
  :ensure t
  :defer t
  :config
  (require 'init-rainbow-delimiters))
(use-package reftex
  :ensure t
  :defer t
  :config
  (require 'init-reftex))
;; (use-package rich-minority
;;     :ensure t)
(use-package smartparens
  :ensure t
  :defer t
  :config
  (require 'init-smartparens))
(use-package sudo-edit
  :ensure t
  :defer t
  :config
  (require 'init-sudo-edit))
(use-package window-numbering
  :ensure t
  ;; :defer t
  :config
  (require 'init-window-numbering))
(use-package yasnippet
  :ensure t
  :defer 5
  :config
  (require 'init-yasnippet))
(use-package pdf-tools
  :ensure t
  ;; :defer 5
  :magic ("%PDF" . pdf-view-mode)
  :config
  (require 'init-pdf-tools))
(use-package ggtags
  :ensure t
  :defer t
  :config
  (require 'init-ggtags))
(use-package pcomplete-extension
  :ensure t)
(use-package ranger
  :ensure t
  :defer t
  :config
  (require 'init-ranger))
(use-package company-quickhelp
  :ensure t
  :defer t
  :config
  (require 'init-company-quickhelp))
(use-package fish-completion
  :ensure t
  :defer t
  :config
  (require 'init-fish-completion))
(use-package pyim
  :ensure t
  :defer t
  :config
  (require 'init-pyim))
;; (use-package posframe
  ;; :ensure t)
(use-package langtool
  :ensure t
  :defer t
  :config
  (require 'init-langtool))
;; (use-package eshell-z
;;   :ensure t
;;   :defer t
;;   :config
;;   (require 'init-eshell-z))
(use-package paradox
  :ensure t
  :defer t
  :config
  (require 'init-paradox))
(use-package artbollocks-mode
  :ensure t
  :defer t
  :config
  (require 'init-artbollocks))
(use-package interleave
  :ensure t
  :defer t)
(use-package evil-matchit
  :ensure t
  :defer t)
(use-package evil-exchange
  :ensure t
  :defer t
  :config
  (require 'init-evil-exchange))
;; (use-package company-flx
;;   :ensure t)
(use-package flyspell-correct
  :ensure t
  :defer t)
(use-package flyspell-correct-popup
  :ensure t
  :defer t)
;; (use-package winum
;;   :ensure t)
(use-package define-word
  :ensure t
  :defer t)
(use-package powerthesaurus
  :ensure t
  :defer t)
(use-package elfeed
  :ensure t
  :defer t
  :config
  (require 'init-elfeed))
(use-package elfeed-goodies
  :ensure t
  :defer t)
(use-package restart-emacs
  :ensure t)
(use-package eyebrowse
  :ensure t
  :config
  (require 'init-eyebrowse))
(use-package spaceline
  :ensure t
  :config
  (require 'init-spaceline))
(use-package eshell-prompt-extras
  :ensure t
  :defer t
  :config
  (require 'init-eshell-prompt-extras))
(use-package beacon
  :ensure t
  :defer t
  :config
  (require 'init-beacon))
(provide 'init-use-package)
