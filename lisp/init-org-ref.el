(setq org-ref-default-bibliography '("~/Dropbox/software/Zotero/bibtex/main.bib"))
(setq org-ref-bibliography-notes "~/Dropbox/document/org/references/ref_notes.org")
;; (setq org-ref-pdf-directory "~/Dropbox/software/Zotero/storage")
;; (setq bibtex-completion-pdf-open-function
;;   (lambda (fpath)
;;     (start-process "open" "*open*" "open" fpath)))
(defun my/org-ref-open-pdf-at-point ( )
   "Open the pdf for bibtex key under point if it exists."
   (interactive)
   (let* ((results (org-ref-get-bibtex-key-and-file))
          (key (car results))
          (pdf-file (car (bibtex-completion-find-pdf key))))
     (if (file-exists-p pdf-file)
         (org-open-file pdf-file)
       (message "No PDF found for %s" key))))

;; (setq org-ref-open-pdf-function 'my/org-ref-open-pdf-at-point)
(require 'org-ref)
(provide 'init-org-ref)
