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
	  undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))))

(provide 'init-undo-tree)
