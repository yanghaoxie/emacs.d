(use-package undo-tree
  :defer t
  :diminish undo-tree-mode
  :init (setq undo-tree-visualizer-timestamps t
              undo-tree-visualizer-diff t)
  :config
  (progn
    ;; restore diff window after quit.  TODO fix upstream
    (defun spacemacs/undo-tree-restore-default ()
      (setq undo-tree-visualizer-diff t))
    ;; (spacemacs|hide-lighter undo-tree-mode)
    ;; (evilified-state-evilify-map undo-tree-visualizer-mode-map
    ;;   :mode undo-tree-visualizer-mode
    ;;   :bindings
    ;;   (kbd "j") 'undo-tree-visualize-redo
    ;;   (kbd "k") 'undo-tree-visualize-undo
    ;;   (kbd "h") 'undo-tree-visualize-switch-branch-left
    ;; (kbd "l") 'undo-tree-visualize-switch-branch-right)
    ))
(provide 'init-undo-tree)
