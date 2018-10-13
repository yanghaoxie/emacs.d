(use-package elfeed
    :ensure t
    :defer t
    :commands (elfeed elfeed-db-load)
    :init (my/leader-keys "af" 'my/elfeed-load-db-and-open)
    :config
    (progn
      (elfeed-goodies/setup)
      (my/normal-keys
       :keymaps 'elfeed-search-mode-map
       "c"  'elfeed-db-compact
       "u" 'elfeed-update
       "U" 'elfeed-search-update--force
       "gu" 'elfeed-unjam
       "o"  'elfeed-load-opml
       "w"  'elfeed-web-start
       "W"  'elfeed-web-stop
       "q" 'my/elfeed-save-db-and-bury
       "RET" 'elfeed-search-show-entry
       "f" 'elfeed-search-live-filter)
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
    ;; (setq elfeed-feeds
    ;;       '(("http://nullprogram.com/feed/" blog emacs)))
    )

(use-package elfeed-goodies
    :ensure t
    :defer t
    :config
    (progn
      (setq elfeed-goodies/feed-source-column-width 40)
      (my/normal-keys
       :keymaps 'elfeed-show-mode-map
       "o" 'elfeed-goodies/show-ace-link)))

(use-package elfeed-org
  :ensure t
  :after (elfeed)
  :config
  (elfeed-org)
  (setq rmh-elfeed-org-files (list "~/.emacs.d/elfeed.org")))

;;functions to support syncing .elfeed between machines
;;makes sure elfeed reads index from disk before launching
;;;###autoload
(defun my/elfeed-load-db-and-open ()
  "Wrapper to load the elfeed db from disk before opening"
  (interactive)
  (elfeed-db-load)
  (elfeed)
  (elfeed-search-update--force))

;;write to disk when quiting
;;;###autoload
(defun my/elfeed-save-db-and-bury ()
  "Wrapper to save the elfeed db to disk before burying buffer"
  (interactive)
  (elfeed-db-save)
  (quit-window))
(provide 'init-elfeed)
