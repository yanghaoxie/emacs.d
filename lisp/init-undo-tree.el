(use-package undo-tree
  :defer t
  :diminish undo-tree-mode
  :init (setq undo-tree-visualizer-timestamps t
              undo-tree-visualizer-diff t)
  :commands undo-tree-visualize
  (progn
    (my/leader-keys
      "au" 'undo-tree-visualize))
  :config
  (progn
(provide 'init-undo-tree)
