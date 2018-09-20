(use-package tex
  :defer t
  :ensure auctex
  :init
  (progn
    (setq TeX-save-query nil)
    (setq TeX-view-program-selection
          (quote
           (((output-dvi has-no-display-manager)
             "dvi2tty")
            ((output-dvi style-pstricks)
             "dvips and gv")
            (output-dvi "xdvi")
            (output-pdf "PDF Tools")
            (output-html "xdg-open"))))
    (setq TeX-auto-save t
          TeX-parse-self t
          TeX-syntactic-comment t
          ;; Synctex support
          TeX-source-correlate-start-server nil
          ;; Don't insert line-break at inline math
          LaTeX-fill-break-at-separators nil)
    (add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
    (add-hook 'LaTeX-mode-hook 'TeX-source-correlate-mode)
    (add-hook 'LaTeX-mode-hook 'TeX-PDF-mode))
  :config
  ;; Key bindings for plain Tex
  (my/leader-keys-major-mode
   :keymaps 'LaTeX-mode-map
   "\\"  'TeX-insert-macro                            ;; C-c C-m
   "-"   'TeX-recenter-output-buffer                  ;; C-c C-l
   "%"   'TeX-comment-or-uncomment-paragraph          ;; C-c %
   ";"   'TeX-comment-or-uncomment-region             ;; C-c ; or C-c :
   ;; TeX-command-run-all runs compile and open the viewer
   "a"   'TeX-command-run-all                         ;; C-c C-a
   "k"   'TeX-kill-job                                ;; C-c C-k
   "l"   'TeX-recenter-output-buffer                  ;; C-c C-l
   "m"   'TeX-insert-macro                            ;; C-c C-m
   "v"   'TeX-view                                    ;; C-c C-v
   ;; TeX-doc is a very slow function
   "hd"  'TeX-doc)
  ;; Key bindings specific to LaTeX
  (my/leader-keys-major-mode
   :keymaps 'LaTeX-mode-map
   "*"   'LaTeX-mark-section      ;; C-c *
   "."   'LaTeX-mark-environment  ;; C-c .
   "c"   'LaTeX-close-environment ;; C-c ]
   "e"   'LaTeX-environment       ;; C-c C-e
   "ii"   'LaTeX-insert-item       ;; C-c C-j
   "s"   'LaTeX-section           ;; C-c C-s
   "fe"  'LaTeX-fill-environment  ;; C-c C-q C-e
   "fp"  'LaTeX-fill-paragraph    ;; C-c C-q C-p
   "fr"  'LaTeX-fill-region       ;; C-c C-q C-r
   "fs"  'LaTeX-fill-section      ;; C-c C-q C-s
   "pb"  'preview-buffer
   "pc"  'preview-clearout
   "pd"  'preview-document
   "pe"  'preview-environment
   "pf"  'preview-cache-preamble
   "pp"  'preview-at-point
   "pr"  'preview-region
   "ps"  'preview-section))

(use-package company-auctex
  :ensure t
  :defer t
  :config
  (company-auctex-init))
(provide 'init-latex)
