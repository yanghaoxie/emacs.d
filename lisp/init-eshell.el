;; bash-like tab completion
(add-hook
 'eshell-mode-hook
 (lambda ()
   (setq pcomplete-cycle-completions nil)))
(defun curr-dir-git-branch-string (pwd)
  "Returns current git branch as a string, or the empty string if
PWD is not in a git repo (or the git command is not found)."
  (interactive)
  (when (and (eshell-search-path "git")
             (locate-dominating-file pwd ".git"))
    (let ((git-output (shell-command-to-string (concat "cd " pwd " && git branch | grep '\\*' | sed -e 's/^\\* //'"))))
      (if (> (length git-output) 0)
          (concat " :" (substring git-output 0 -1))
        "(no branch)"))))

(defun pwd-replace-home (pwd)
  "Replace home in PWD with tilde (~) character."
  (interactive)
  (let* ((home (expand-file-name (getenv "HOME")))
         (home-len (length home)))
    (if (and
         (>= (length pwd) home-len)
         (equal home (substring pwd 0 home-len)))
        (concat "~" (substring pwd home-len))
      pwd)))

(defun pwd-shorten-dirs (pwd)
  "Shorten all directory names in PWD except the last two."
  (let ((p-lst (split-string pwd "/")))
    (if (> (length p-lst) 1)
        (concat
         (mapconcat (lambda (elm) (if (zerop (length elm)) ""
                               (substring elm 0 1)))
                    (butlast p-lst 1)
                    "/")
         "/"
         (mapconcat (lambda (elm) elm)
                    (last p-lst 1)
                    "/"))
      pwd  ;; Otherwise, we just return the PWD
      )))

(defun split-directory-prompt (directory)
  "Break up the directory into a 'parent' and a 'base'"
  (if (string-match-p ".*/.*" directory)
      (list (file-name-directory directory) (file-name-base directory))
    (list "" directory)))

;; Create a custom prompt using the functions above
(setq eshell-prompt-function
      (lambda ()
        (let* ((directory (split-directory-prompt (pwd-shorten-dirs (pwd-replace-home (eshell/pwd)))))
               (parent (car directory))
               (name (cadr directory))
               ;; (branch (or (curr-dir-git-branch-string (eshell/pwd)) ""))
	       )

          (if (eq 'dark (frame-parameter nil 'background-mode))
              (concat   ;; Prompt for Dark Themes
               (propertize parent 'face `(:foreground "#8888FF"))
               (propertize name   'face `(:foreground "#8888FF" :weight bold))
               ;; (propertize branch 'face `(:foreground "green"))
               (propertize " λ"   'face `(:weight ultra-bold))
               (propertize " "    'face `(:weight bold)))

            (concat    ;; Prompt for Light Themes
             (propertize parent 'face `(:foreground "blue"))
             (propertize name   'face `(:foreground "blue" :weight bold))
             ;; (propertize branch 'face `(:foreground "dark green"))
             (propertize " λ"   'face `(:weight ultra-bold))
             (propertize " "    'face `(:weight bold)))))))

;; Set this to match eshell-prompt-function
(setq eshell-prompt-regexp " λ ")

;; Make C-a go to beginning of command instead of line
(add-hook 'eshell-mode-hook '(lambda ()
                               (local-set-key (kbd "C-a")
                                              '(lambda ()
                                                 (interactive)
                                                 (beginning-of-line)
                                                 (search-forward-regexp eshell-prompt-regexp)))))

;; Turn off the default prompt.
(setq eshell-highlight-prompt nil)
(provide 'init-eshell)
