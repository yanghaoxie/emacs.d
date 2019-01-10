(use-package undo-tree
  :defer t
  :diminish undo-tree-mode
  :commands undo-tree-visualize
  :init
  (progn
    (my/leader-keys
      "au" 'undo-tree-visualize))
  :config
  (progn
    (setq undo-tree-visualizer-timestamps t
	  undo-tree-visualizer-diff t
	  undo-tree-auto-save-history t
	  undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
    (defun spacemacs/undo-tree-restore-default ()
      (setq undo-tree-visualizer-diff t))
    (advice-add 'undo-tree-visualizer-quit :after #'spacemacs/undo-tree-restore-default)))

(provide 'init-undo-tree)
