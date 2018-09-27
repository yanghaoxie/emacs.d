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
	       "%I"
	       " "

	       '(:eval (if (eq major-mode 'pdf-view-mode)
			   (progn
			     (format "(%d/%d)"
				     (eval `(pdf-view-current-page))
				     (pdf-cache-number-of-pages)))
			 (progn
			 ;; (:eval mode-line-percent-position)
			   (list
			    '(:eval mode-line-percent-position)
			    (propertize "(")
			    (propertize "%2l")
			    (propertize ",")
			    (propertize "%2c")
			    (propertize ")")))))
	       '(:eval mode-line-modes)
               '(:eval vc-mode vc-mode)
               ;; '(:eval evil-mode-line-tag)

               ;;global-mode-string, org-timer-set-timer in org-mode need this
               (propertize "%M" 'face nil)

               ;; " --"
               ;; i don't want to see minor-modes; but if you want, uncomment this:
               ;; minor-mode-alist  ;; list of minor modes
               ;; "%-" ;; fill with '-'
               ))
(provide 'init-modeline)
