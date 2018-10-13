(use-package esup
  :ensure t
  :init
  (progn
    (my/leader-keys
      "ae" 'esup)))

(use-package benchmark-init
    :ensure t
    :config
    (progn
      (my/leader-keys
	"ab" '(:ignore t :which-key "benchmark")
	"abt" 'benchmark-init/show-durations-tabulated
	"abr" 'benchmark-init/show-durations-tree))
    :config
    ;; To disable collection of benchmark data after init is done.
    (add-hook 'after-init-hook 'benchmark-init/deactivate))
(provide 'init-benchmark)
