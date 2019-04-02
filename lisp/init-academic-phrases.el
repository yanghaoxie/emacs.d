(use-package academic-phrases
  :ensure t
  :defer t
  :init
  (progn
    (my/leader-keys-major-mode
     :keymaps 'LaTeX-mode-map
      "ip" 'academic-phrases
      "is" 'academic-phrases-by-section)
    (my/leader-keys-major-mode
     :keymaps 'org-mode-map
      "ip" 'academic-phrases
      "is" 'academic-phrases-by-section)))
(provide 'init-academic-phrases)
