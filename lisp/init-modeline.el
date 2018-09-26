(setq-default mode-line-format
              (list
               ;;eyebrowse
               '(:eval (eyebrowse-mode-line-indicator))
              ;; winum
               "["
               '(:eval (winum-get-number-string))
               "]"
               " "
               ;; the buffer name; the file name as a tool tip
               '(:eval (propertize "%b" 'face nil
                                   'help-echo (buffer-file-name)))
	       " "
               ;; '(:eval mode-line-frame-identification)
               '(:eval mode-line-modified)
               " "
               '(:eval mode-line-percent-position)
               ;; '(:eval mode-line-position)

               ;; line and column
               "(" ;; '%02' to set to 2 chars at least; prevents flickering
               "%02l" "," "%02c"
               ;; (propertize "%02l" 'face 'font-lock-type-face) ","
               ;; (propertize "%02c" 'face 'font-lock-type-face)
               ") "
	       '(:eval mode-line-modes)
               '(:eval vc-mode vc-mode)
               '(:eval evil-mode-line-tag)

               ;;global-mode-string, org-timer-set-timer in org-mode need this
               (propertize "%M" 'face nil)

               ;; " --"
               ;; i don't want to see minor-modes; but if you want, uncomment this:
               ;; minor-mode-alist  ;; list of minor modes
               ;; "%-" ;; fill with '-'
               ))
(provide 'init-modeline)
