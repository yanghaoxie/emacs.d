(elpy-enable)
(setq elpy-rpc-backend "jedi")
(setq python-shell-interpreter "python3.5")
(setq elpy-rpc-python-command "python")
(setq python-shell-interpreter "ipython"
      python-shell-interpreter-args "-i --simple-prompt")
(provide 'init-elpy)
