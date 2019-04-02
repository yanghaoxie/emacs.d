(use-package string-inflection
  :ensure t
  :init
  (my/leader-keys
    "xi" 'hydra-string-inflection/body)
  :config
  (progn
    (defhydra hydra-string-inflection ()
      "string inflection"
      ("c" string-inflection-lower-camelcase "lower camel")
      ("C" string-inflection-camelcase "camel")
      ("k" string-inflection-kebab-case "kebab")
      ("u" string-inflection-underscore "underscore")
      ("U" string-inflection-upcase "upcase")
      ("q" nil "quit"))))
(provide 'init-string-inflection)
