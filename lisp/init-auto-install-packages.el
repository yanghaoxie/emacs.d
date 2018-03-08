; list the packages you want
(setq package-list '(ace-jump-buffer dash avy ace-window avy
		     airline-themes powerline auctex avy
		     bash-completion cdlatex diminish elpy s
		     yasnippet pyvenv highlight-indentation
		     find-file-in-project ivy company
		     esh-autosuggest company eshell-z evil-anzu
		     anzu evil goto-chg undo-tree evil-escape
		     evil goto-chg undo-tree evil-matchit evil
		     goto-chg undo-tree evil-nerd-commenter
		     evil-org evil goto-chg undo-tree
		     evil-smartparens smartparens dash evil
		     goto-chg undo-tree evil-snipe evil goto-chg
		     undo-tree evil-surround evil goto-chg
		     undo-tree exec-path-from-shell expand-region
		     find-file-in-project ivy flycheck seq
		     let-alist pkg-info epl dash font-lock+
		     fullframe general golden-ratio-scroll-screen
		     goto-chg helm-swoop helm helm-core async
		     popup async highlight-indentation ht dash
		     jedi auto-complete popup jedi-core
		     python-environment deferred epc ctable
		     concurrent deferred jedi-core
		     python-environment deferred epc ctable
		     concurrent deferred lua-mode magit
		     with-editor async magit-popup dash async
		     let-alist git-commit with-editor async dash
		     ghub let-alist dash async magit-popup dash
		     async memoize neotree org org-plus-contrib
		     org-ref pdf-tools let-alist tablist f dash s
		     s key-chord hydra ivy helm-bibtex biblio
		     biblio-core dash seq let-alist f dash s dash
		     s parsebib helm helm-core async popup async
		     helm helm-core async popup async dash
		     parsebib pdf-tools let-alist tablist
		     pkg-info epl popup powerline
		     python-environment deferred pyvenv
		     rainbow-delimiters rich-minority seq
		     smartparens dash sphinx-doc dash s sudo-edit
		     swiper ivy tablist undo-tree uptimes
		     window-numbering with-editor async yagist
		     yasnippet zenburn-theme zoom))

; list the repositories containing them
(setq package-archives '(("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")
			 ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
                         ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ))

; activate all the packages (in particular autoloads)
(package-initialize)

; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (message "%s" "test")
    (package-install package)))
(provide 'init-auto-install-packages)
