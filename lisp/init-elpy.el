(elpy-enable)
(setq elpy-rpc-backend "jedi")
;; (setq python-shell-interpreter "ipython3")
(setq elpy-rpc-python-command "python3")
(setq python-shell-interpreter "ipython3"
      python-shell-interpreter-args "-i --simple-prompt"
      )
(provide 'init-elpy)
