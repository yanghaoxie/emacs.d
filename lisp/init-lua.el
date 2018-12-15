(use-package lua-mode
  :ensure t
  :defer t
  :mode ("\\.lua\\'" . lua-mode)
  :interpreter ("lua" . lua-mode)
  :init
  (progn
    (setq lua-indent-level 2
	  lua-indent-string-contents t)
    (my/leader-keys-major-mode
      :keymaps 'lua-mode
      "d" 'lua-search-documentation
      "sb" 'lua-send-buffer
      "sf" 'lua-send-defun
      "sl" 'lua-send-current-line
      "sr" 'lua-send-region)))

(provide 'init-lua)
