(defun spacemacs/layout-switch-by-pos (pos)
  "Switch to perspective of position POS.
If POS has no layout, and `dotspacemacs-auto-generate-layout-names'
is non-nil, create layout with auto-generated name. Otherwise,
ask the user if a new layout should be created."
  (let ((persp-to-switch
         (nth pos (persp-names-current-frame-fast-ordered))))
    (if persp-to-switch
        (persp-switch persp-to-switch)
      (let ((persp-reset-windows-on-nil-window-conf t))
        (cond
         ((y-or-n-p (concat "Layout in this position doesn't exist. "
                            "Do you want to create one? "))
          (persp-switch nil)))))))

;; Define all `spacemacs/persp-switch-to-X' functions
(dolist (i (number-sequence 9 0 -1))
  (eval `(defun ,(intern (format "spacemacs/persp-switch-to-%s" i)) nil
           ,(format "Switch to layout %s.\n%s"
                    i "See `spacemacs/layout-switch-by-pos' for details.")
           (interactive)
           (spacemacs/layout-switch-by-pos ,(if (eq 0 i) 9 (1- i))))))


(provide 'spacemacs-persp-extra)
