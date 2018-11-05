(use-package company
  :ensure t
  :diminish company-mode
  :init
  (progn
    (setq company-idle-delay 0.1
	  company-show-numbers t)
    (add-hook 'after-init-hook 'global-company-mode))
  :config
  (progn
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

(use-package company-statistics
  :ensure t
  :defer t
  :config
  (company-statistics-mode))
(provide 'init-company)
