(rich-minority-mode 1)
(setq rm-whitelist
      (format "^ \\(%s\\)$"
              (mapconcat #'identity
                         '("Fly.*" "Ace*") 
                         "\\|")))
;; (setq rm-blacklist
;;       (format "^ \\(%s\\)$"
;;               (mapconcat #'identity
;;                          '("Python") 
;;                          "\\|")))
(provide 'init-rich-minority)
