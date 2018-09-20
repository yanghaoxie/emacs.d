(use-package org
  :defer t
  :mode ("\\.org\\'" . org-mode)
  ;; :mode org-mode
  :init
  (progn
    ;; org-capture
    (with-eval-after-load 'org-capture
      (my/leader-keys-major-mode
       :keymaps 'org-capture-mode-map
       "a" 'org-capture-kill
       "c" 'org-capture-finalize
       "k" 'org-capture-kill
       "r" 'org-capture-refile))
    ;; org-src
    ;; (with-eval-after-load 'org-src
    ;;   (my/leader-keys-major-mode
    ;;    :keymaps org-src-mode-map
    ;;    "c" 'org-edit-src-exit
    ;;    "a" 'org-edit-src-abort
    ;;    "k" 'org-edit-src-abort))
    ;; org-mode
    (my/leader-keys-major-mode
     :keymaps 'org-mode-map
     "'" 'org-edit-special
     "c" 'org-capture
     "Cc" 'org-clock-cancel
     "Ci" 'org-clock-in
     "Co" 'org-clock-out
     "Cr" 'org-resolve-clocks
     "dd" 'org-deadline
     "ds" 'org-schedule
     "dt" 'org-time-stamp
     "dT" 'org-time-stamp-inactive
     "ee" 'org-export-dispatch
     "fi" 'org-feed-goto-inbox
     "fu" 'org-feed-update-all

     "a" 'org-agenda

     "Tc" 'org-toggle-checkbox
     "Te" 'org-toggle-pretty-entities
     "Ti" 'org-toggle-inline-images
     "Tl" 'org-toggle-link-display
     "Tt" 'org-show-todo-tree
     "TT" 'org-todo
     "TV" 'space-doc-mode
     "Tx" 'org-toggle-latex-fragment

     ;; More cycling options (timestamps, headlines, items, properties)
     "L" 'org-shiftright
     "H" 'org-shiftleft
     "J" 'org-shiftdown
     "K" 'org-shiftup

     ;; Change between TODO sets
     "C-S-l" 'org-shiftcontrolright
     "C-S-h" 'org-shiftcontrolleft
     "C-S-j" 'org-shiftcontroldown
     "C-S-k" 'org-shiftcontrolup

     ;; Subtree editing
     "sa" 'org-toggle-archive-tag
     "sA" 'org-archive-subtree
     "sb" 'org-tree-to-indirect-buffer
     "sh" 'org-promote-subtree
     "sj" 'org-move-subtree-down
     "sk" 'org-move-subtree-up
     "sl" 'org-demote-subtree
     "sn" 'org-narrow-to-subtree
     "sN" 'widen
     "sr" 'org-refile
     "ss" 'org-sparse-tree
     "sS" 'org-sort

     ;; tables
     "ta" 'org-table-align
     "tb" 'org-table-blank-field
     "tc" 'org-table-convert
     "tdc" 'org-table-delete-column
     "tdr" 'org-table-kill-row
     "te" 'org-table-eval-formula
     "tE" 'org-table-export
     "th" 'org-table-previous-field
     "tH" 'org-table-move-column-left
     "tic" 'org-table-insert-column
     "tih" 'org-table-insert-hline
     "tiH" 'org-table-hline-and-move
     "tir" 'org-table-insert-row
     "tI" 'org-table-import
     "tj" 'org-table-next-row
     "tJ" 'org-table-move-row-down
     "tK" 'org-table-move-row-up
     "tl" 'org-table-next-field
     "tL" 'org-table-move-column-right
     "tn" 'org-table-create
     "tN" 'org-table-create-with-table.el
     "tr" 'org-table-recalculate
     "ts" 'org-table-sort-lines
     "ttf" 'org-table-toggle-formula-debugger
     "tto" 'org-table-toggle-coordinate-overlays
     "tw" 'org-table-wrap-region

     ;; Source blocks / org-babel
     "bp"     'org-babel-previous-src-block
     "bn"     'org-babel-next-src-block
     "be"     'org-babel-execute-maybe
     "bo"     'org-babel-open-src-block-result
     "bv"     'org-babel-expand-src-block
     "bu"     'org-babel-goto-src-block-head
     "bg"     'org-babel-goto-named-src-block
     "br"     'org-babel-goto-named-result
     "bb"     'org-babel-execute-buffer
     "bs"     'org-babel-execute-subtree
     "bd"     'org-babel-demarcate-block
     "bt"     'org-babel-tangle
     "bf"     'org-babel-tangle-file
     "bc"     'org-babel-check-src-block
     "bj"     'org-babel-insert-header-arg
     "bl"     'org-babel-load-in-session
     "bi"     'org-babel-lob-ingest
     "bI"     'org-babel-view-src-block-info
     "bz"     'org-babel-switch-to-session
     "bZ"     'org-babel-switch-to-session-with-code
     "ba"     'org-babel-sha1-hash
     "bx"     'org-babel-do-key-sequence-in-edit-buffer
     "b."     'spacemacs/org-babel-transient-state/body
     "*" 'org-ctrl-c-star
     "-" 'org-ctrl-c-minus
     "#" 'org-update-statistics-cookies
     "RET"   'org-ctrl-c-ret
     "M-RET" 'org-meta-return
     ;; attachments
     "A" 'org-attach
     ;; insertion
     "id" 'org-insert-drawer
     "ie" 'org-set-effort
     "if" 'org-footnote-new
     "ih" 'org-insert-heading
     "iH" 'org-insert-heading-after-current
     "iK" 'spacemacs/insert-keybinding-org
     "il" 'org-insert-link
     "in" 'org-add-note
     "ip" 'org-set-property
     "is" 'org-insert-subheading
     "it" 'org-set-tags)
     ;; org-agenda
     (my/leader-keys
      "ao#" 'org-agenda-list-stuck-projects
      "ao/" 'org-occur-in-agenda-files
      "aoa" 'org-agenda-list
      "aoc" 'org-capture
      "aoe" 'org-store-agenda-views
      "aofi" 'org-feed-goto-inbox
      "aofu" 'org-feed-update-all
      "aokg" 'org-clock-goto
      "aoki" 'org-clock-in-last
      "aokj" 'org-clock-jump-to-current-clock
      "aoko" 'org-clock-out
      "aokr" 'org-resolve-clocks
      "aol" 'org-store-link
      "aom" 'org-tags-view
      "aoo" 'org-agenda
      "aos" 'org-search-view
      "aot" 'org-todo-list
      ;; SPC C- capture/colors
      "Cc" 'org-capture)))
(provide 'init-org)
