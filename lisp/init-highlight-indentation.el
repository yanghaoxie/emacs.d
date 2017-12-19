(require 'highlight-indentation)
(defun my-set-highlight-stipple ()
  ;; Define custom stipple for highlight-indentation
  ;; See https://github.com/antonj/Highlight-Indentation-for-Emacs/issues/16
  (let* ((char-width (frame-char-width (selected-frame)))
        (hl-stipple (if (> char-width 8)
                        (list char-width 4 (string 1 0 1 0 1 0 1 0))
                      (list char-width 4 (string 1 0 1 0)))))
    (set-face-attribute 'highlight-indentation-face nil
                        :stipple hl-stipple
                        :inherit nil
			:foreground "gray90")
    (set-face-attribute 'highlight-indentation-current-column-face nil
                        :stipple hl-stipple
                        :inherit nil
                        :foreground "yellow"))
  )
;; Patch highlight-indentation-mode to set/update a stipple attribute
(defadvice highlight-indentation-mode (before set-highlight-indentation-stipple activate)
"Sets the stipple used by indentation highlighting"
  (my-set-highlight-stipple))
(provide 'init-highlight-indentation)
