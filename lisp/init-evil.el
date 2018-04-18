(require 'evil)
(evil-mode 1)
(setq evil-default-state 'normal)
(evil-set-initial-state 'pdf-view-mode 'normal)
(evil-set-initial-state 'pdf-outline-buffer-mode 'normal)
(evil-set-initial-state 'custom-mode 'normal)
;; (loop for (mode . state) in
;;       '(
;; 	(magit-mode . normal)
;; 	)
;;       do (evil-set-initial-state mode state))
(provide 'init-evil)
