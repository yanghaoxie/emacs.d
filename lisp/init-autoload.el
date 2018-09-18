;;;###autoload
(defun my/kill-this-buffer (&optional arg)
  ;; copy from spacemacs
  "Kill the current buffer.
If the universal prefix argument is used then kill also the window."
  (interactive "P")
  (if (window-minibuffer-p)
      (abort-recursive-edit)
    (if (equal '(4) arg)
        (kill-buffer-and-window)
      (kill-buffer))))

;;;###autoload
;; from https://gist.github.com/3402786
(defun my/toggle-maximize-buffer ()
  "Maximize buffer"
  (interactive)
  (if (and (= 1 (length (window-list)))
           (assoc ?_ register-alist))
      (jump-to-register ?_)
    (progn
      (window-configuration-to-register ?_)
      (delete-other-windows))))

;;;###autoload
(defun my/toggle-syntax-checking ()
  (interactive)
  (if (bound-and-true-p flycheck-mode)
      (flycheck-mode -1)
    (flycheck-mode 1)))

;;;###autoload
(defun my/byte-compile-init-dir ()
  "Byte-compile all your dotfiles."
  (interactive)
  (byte-recompile-directory user-emacs-directory 0))
