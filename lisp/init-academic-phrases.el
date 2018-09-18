(use-package academic-phrases
  :ensure t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'latex-mode
      "oap" 'academic-phrases
      "oas" 'academic-phrases-by-section
      )
    (my/leader-keys-major-mode
     :keymaps 'org-mode
      "oap" 'academic-phrases
      "oas" 'academic-phrases-by-section
      )
    )
  )
(provide 'init-academic-phrases)
