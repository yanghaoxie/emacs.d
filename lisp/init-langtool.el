(use-package langtool
  :ensure t
  :init
  (my/leader-keys
    "Sc" 'langtool-check
    "SC" 'langtool-correct-buffer
    "Sq" 'langtool-check-done)
  :config
  (setq langtool-java-classpath "/usr/share/languagetool:/usr/share/java/languagetool/*"))
(provide 'init-langtool)
