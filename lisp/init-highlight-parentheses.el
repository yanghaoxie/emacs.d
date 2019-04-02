(use-package highlight-parentheses
    :ensure t
    :diminish highlight-parentheses-mode
    :defer t
    :init
    (progn
      (add-hook 'prog-mode-hook #'highlight-parentheses-mode)
      (setq hl-paren-delay 0.2)
      (setq hl-paren-colors '("Springgreen3"
                              "IndianRed1"
                              "IndianRed3"
                              "IndianRed4")))
    :config
    (set-face-attribute 'hl-paren-face nil :weight 'ultra-bold))
(provide 'init-highlight-parentheses)
