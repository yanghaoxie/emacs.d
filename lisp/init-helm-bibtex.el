;; helm-bibtex configurations
(setq bibtex-completion-pdf-field "file")
;; (setq bibtex-completion-pdf-extenaion '(".pdf" ".html"))
(setq bibtex-completion-find-additional-pdfs t)
(setq bibtex-completion-bibliography "~/Dropbox/software/Zotero/bibtex/main.bib")
(setq bibtex-completion-notes-path "~/Dropbox/document/org/references/ref_notes.org")
(setq bibtex-completion-notes-template-one-file
      "\n* ${title} cite:${=key=}\n  :PROPERTIES:\n  :Custom_ID: ${=key=}\n :INTERLEAVE_PDF: ${file}\n :END:\n\n")
;; to get some consistency so they got the same results either way they open the notes (org-ref-open-bibtex-notes and helm-bibtex/add-notes).
;; (defun my/org-ref-notes-function (candidates)
;;   (let ((key (helm-marked-candidates)))
;;     (funcall org-ref-notes-function (car key))))

;; (helm-delete-action-from-source "Edit notes" helm-source-bibtex)
;; ;; Note that 7 is a magic number of the index where you want to insert the command. You may need to change yours.
;; (helm-add-action-to-source "Edit notes" 'my/org-ref-notes-function helm-source-bibtex 13)
(provide 'init-helm-bibtex)
