(use-package paradox
  :ensure t
  :commands (paradox-list-packages)
  :init
  (progn
    (my/leader-keys
      "ak" 'paradox-list-packages))
  :general
  (:keymaps 'paradox-menu-mode-map
	    :states 'normal
	    "i" 'package-menu-mark-install
	    "d" 'package-menu-mark-delete
	    "U" 'package-menu-mark-upgrades
	    "u" 'package-menu-mark-unmark
	    "x" 'package-menu-execute
	    "q" 'paradox-quit-and-close))
(provide 'init-paradox)
