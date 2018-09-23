(use-package zoom-frm
  :ensure t
  :commands (zoom-frm-unzoom
             zoom-frm-out
             zoom-frm-in)
  :init
  (progn
    (defhydra hydra-zoom-frm ()
       "zoom-frm"
       ("=" zoom-frm-in "in")
       ("-" zoom-frm-out "out")
       ("0" zoom-frm-unzoom "reset")
       ("q" nil "quit")
       )
    (my/leader-keys
     "zf" 'hydra-zoom-frm/body)))
(provide 'init-zoom-frm)
