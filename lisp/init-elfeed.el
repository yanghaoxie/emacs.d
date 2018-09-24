(use-package elfeed
    :ensure t
    :defer t
    :init (my/leader-keys "af" 'elfeed)
    :config
    (progn
      (my/normal-keys
       :keymaps 'elfeed-search-mode-map
       "c"  'elfeed-db-compact
       "gr" 'elfeed-update
       "gR" 'elfeed-search-update--force
       "gu" 'elfeed-unjam
       "o"  'elfeed-load-opml
       "w"  'elfeed-web-start
       "W"  'elfeed-web-stop
       "q" 'elfeed-search-quit-window
       "RET" 'elfeed-search-show-entry)
      (my/normal-keys
       :keymaps 'elfeed-show-mode-map
       "C-j" 'elfeed-show-next
       "C-k" 'elfeed-show-prev
       "q" 'elfeed-search-quit-window)
      (my/normal-keys
       :keymaps 'elfeed-search-mode-map
       :states 'visual
       "+"  'elfeed-search-tag-all
       "-"  'elfeed-search-untag-all
       "b"  'elfeed-search-browse-url
       "y"  'elfeed-search-yank))
    (setq elfeed-feeds
          '(("http://nullprogram.com/feed/" blog emacs))))

(use-package elfeed-goodies
    :ensure t
    :commands elfeed
    :init
    (elfeed-goodies/setup)
    :config
    (progn
      (my/normal-keys
       :keymaps 'elfeed-show-mode-map
       "o" 'elfeed-goodies/show-ace-link)))
(provide 'init-elfeed)
