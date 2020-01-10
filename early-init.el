(defvar my--file-name-handler-alist file-name-handler-alist)
(setq gc-cons-threshold most-positive-fixnum
      gc-cons-percentage 0.6
      file-name-handler-alist nil)

(if (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(if (fboundp 'set-scroll-bar-mode)
  (set-scroll-bar-mode nil))
(if (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
