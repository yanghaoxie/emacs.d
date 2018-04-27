(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
(add-hook 'org-mode-hook 'turn-on-org-cdlatex)
(require 'org)
(require 'ox-bibtex)
(setq org-latex-pdf-process
      '(
	"xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "bibtex %b"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
        "xelatex -shell-escape -interaction nonstopmode -output-directory %o %f"
	))
(setq org-log-done t)
'(org-agenda-files
  (quote
   ("~/Dropbox/document/org/Dynamic_VNF_placement/Dynamic_VNF_placement.org")))
'(org-html-with-latex (quote dvipng))
(add-to-list 'org-latex-classes
	     '("IEEEtran" "\\documentclass{IEEEtran}"
      ("\\section{%s}" . "\\section*{%s}")
      ("\\subsection{%s}" . "\\subsection*{%s}")
      ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
;; latex highlight in org mode
(setq org-highlight-latex-and-related '(latex script entities))
(provide 'init-org)
