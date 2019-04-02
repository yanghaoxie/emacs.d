(use-package unfill
  :ensure t
  :commands (unfill-region unfill-paragraph unfill-toggle)
  :init
  (my/all-states-keys
    "M-q" 'unfill-toggle))

(provide 'init-unfill)
