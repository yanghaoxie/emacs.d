(require 'package)
(setq package-enable-at-startup nil)
(package-initialize)
(require 'org)
(require 'ox)
(require 'cl)
(setq org-export-async-debug t)
(require 'org-ref)
(use-package org
  :ensure org-plus-contrib
  :config
  (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
  (add-hook 'org-mode-hook 'turn-on-auto-fill)
  (setq org-src-tab-acts-natively t
	org-edit-src-auto-save-idle-delay 5
	org-src-ask-before-returning-to-edit-buffer nil)
  (setq org-directory "~/Dropbox/document/org")
  (setq org-agenda-files (apply 'append
				(mapcar
				 (lambda (directory)
				   (directory-files-recursively
				    directory org-agenda-file-regexp))
				 '("~/Dropbox/document/org/" ))))
  (setq org-latex-pdf-process
	'(
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  "bibtex %b"
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	  ))
  (with-eval-after-load 'ox-latex
    (add-to-list 'org-latex-classes
		 '("IEEEtran" "\\documentclass{IEEEtran}"
		   ("\\section{%s}" . "\\section*{%s}")
		   ("\\subsection{%s}" . "\\subsection*{%s}")
		   ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))))
  ;; latex highlight in org mode
  (setq org-highlight-latex-and-related '(latex script entities))

  ;;setting up capture
  (setq org-default-notes-file (concat org-directory "/capture/capture.org"))
					; Targets include this file and any file contributing to the agenda - up to 9 levels deep
  (setq org-capture-templates
	(quote (
		("t" "todo" entry (file+headline "~/Dropbox/document/org/capture/capture.org" "Tasks")
		 "* TODO %?\n\s\s%U\n")
		("n" "note" entry (file+headline "~/Dropbox/document/org/capture/capture.org" "Notes")
		 "* %?\n\s\s%U\n")
		("a" "appointments")
		("aa" "appointments" entry (file "~/Dropbox/document/org/appts/appts.org")
		 "* TODO %?")
		("ar" "repeating appointments" entry (file "~/Dropbox/document/org/appts/appts_re.org")
		 "* TODO %?")
		)))
  
  (setq org-list-allow-alphabetical t
	org-log-done 'time
	org-refile-use-outline-path t
	org-outline-path-complete-in-steps nil
	org-imenu-depth 5
	org-src-window-setup 'split-window-below
	org-export-in-background nil
	org-export-async-init-file (concat user-emacs-directory "init-org-async.el")
	org-modules '(ol-w3m ol-bbdb ol-bibtex ol-docview ol-gnus ol-info ol-irc ol-mhe ol-rmail ol-eww org-special-blocks))
  )
