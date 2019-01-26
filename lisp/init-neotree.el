(use-package neotree
  :defer t
  :commands neo-global--window-exists-p
  :init
  (progn
    (setq neo-window-width 25
	  neo-create-file-auto-open t
	  neo-banner-message "Press ? for neotree help"
	  neo-show-updir-line nil
	  neo-mode-line-type 'neotree
	  neo-smart-open t
	  neo-dont-be-alone t
	  neo-persist-show nil
	  neo-show-hidden-files t
	  neo-auto-indent-point t
	  neo-modern-sidebar t
	  neo-vc-integration nil
	  neo-theme 'ascii)
    (when (eq 'darwin system-type)
      (setq neo-default-system-application "open"))
    (my/leader-keys
      "fT" 'neotree-toggle
      "ft" 'neotree-show
      "pt" 'neotree-find-project-root))
  :config
  (progn
    (my/normal-keys
      :keymaps 'neotree-mode-map
      (kbd "<return>") (neotree-make-executor
			:file-fn 'neo-open-file
			:dir-fn 'neo-open-dir)
      (kbd "<tab>") (neotree-make-executor
		     :dir-fn 'neo-open-dir)
      "z" (neotree-make-executor
	   :dir-fn 'neo-open-dir)
      "ZZ" 'quit-window
      "gd" (neotree-make-executor
	    :dir-fn 'neo-open-dired)
      "gD" (neotree-make-executor
	    :dir-fn 'neo-open-dired)
      "go" (neotree-make-executor
	    :file-fn 'neo-open-file
	    :dir-fn 'neo-open-dir)
      "gO" 'neotree-quick-look
      "gr" 'neotree-refresh
      "q" 'neotree-hide
      "H" 'neotree-hidden-file-toggle
      "gh" 'neotree-hidden-file-toggle
      (kbd "C-k") 'neotree-select-up-node
      "gk" 'neotree-select-up-node
      "[" 'neotree-select-up-node
      (kbd "C-j") 'neotree-select-down-node
      "gj" 'neotree-select-down-node
      "]" 'neotree-select-down-node
      "gv" 'neotree-open-file-in-system-application
      "c" 'neotree-create-node
      "y" 'neotree-copy-node
      "r" 'neotree-rename-node
      "R" 'neotree-change-root
      "d" 'neotree-delete-node
      "J" 'neotree-dir
      "+" 'neotree-stretch-toggle
      "=" 'neotree-stretch-toggle
      "ge" 'neotree-enter
      "j" 'neotree-next-line
      "k" 'neotree-previous-line
      ;; Unchanged keybings.
      "a" (neotree-make-executor
	   :file-fn 'neo-open-file-ace-window)
      "|" (neotree-make-executor
	   :file-fn 'neo-open-file-vertical-split)
      "-" (neotree-make-executor
	   :file-fn 'neo-open-file-horizontal-split)
      "S" 'neotree-select-previous-sibling-node
      "s" 'neotree-select-next-sibling-node)
    (my/all-states-keys
      "M-0" 'neotree-show)
    (defun winum-assign-0-to-neotree ()
      (when (string-match-p (buffer-name) ".*\\*NeoTree\\*.*") 10))
    (add-to-list 'winum-assign-functions #'winum-assign-0-to-neotree)))

;;;###autoload
(defun neotree-find-project-root ()
  (interactive)
  (if (neo-global--window-exists-p)
      (neotree-hide)
    (let ((origin-buffer-file-name (buffer-file-name)))
      (neotree-find (projectile-project-root))
      (neotree-find origin-buffer-file-name))))

(provide 'init-neotree)
