(require 'company)
(global-company-mode 1)
(setq company-idle-delay 0)
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
(setq company-show-numbers t)
(add-hook 'after-init-hook 'global-company-mode)


;; solve company yasnippet conflicts
(defun company-yasnippet-or-completion ()
  "Solve company yasnippet conflicts."
  (interactive)
  (let ((yas-fallback-behavior
         (apply 'company-complete-common nil)))
    (yas-expand)))

(add-hook 'company-mode-hook
          (lambda ()
            (substitute-key-definition
             'company-complete-common
             'company-yasnippet-or-completion
             company-active-map)))

(provide 'init-company)
