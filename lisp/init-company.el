(use-package company
  :ensure t
  :diminish company-mode
  :init
  (progn
    (add-hook 'after-init-hook 'global-company-mode))
  :config
  (progn
    (let ((map company-active-map))
      (define-key map (kbd "C-j") 'company-select-next)
      (define-key map (kbd "C-k") 'company-select-previous)
      (define-key map (kbd "C-l") 'company-complete-selection))
    (setq company-idle-delay 0
	  company-show-numbers t
	  company-tooltip-idle-delay 0
	  company-minimum-prefix-length 2
	  company-dabbrev-ignore-case nil
	  company-dabbrev-downcase nil
	  company-ispell-dictionary (file-truename "~/.emacs.d/dict/english-words.txt")
	  ispell-alternate-dictionary (file-truename "~/.emacs.d/dict/english-words.txt")
	  company-transformers '(company-sort-by-backend-importance)
	  company-dabbrev-code-other-buffers t
	  company-dabbrev-ignore-case nil
	  company-dabbrev-downcase nil
	  company-dabbrev-code-time-limit 5
	  company-backends '(company-capf
			     company-dabbrev-code
			     company-keywords
			     company-files
			     company-ispell
			     company-yasnippet
			     company-abbrev
			     company-dabbrev))
    (defun ora-company-number ()
      "Forward to `company-complete-number'.
Unless the number is potentially part of the candidate.
In that case, insert the number."
      (interactive)
      (let* ((k (this-command-keys))
	     (re (concat "^" company-prefix k)))
	(if (cl-find-if (lambda (s) (string-match re s))
			company-candidates)
	    (self-insert-command 1)
	  (company-complete-number (string-to-number k)))))
    (let ((map company-active-map))
      (mapc
       (lambda (x)
	 (define-key map (format "%d" x) 'ora-company-number
	   ))
       (number-sequence 0 9))
      (define-key map " " (lambda ()
			    (interactive)
			    (company-abort)
			    (self-insert-command 1)))
      (define-key map (kbd "<return>") nil))
    ))

;; (use-package company-statistics
;;   :ensure t
;;   :defer t
;;   :config
;;   (company-statistics-mode))


(provide 'init-company)
