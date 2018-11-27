(use-package pyim
  :ensure t
  :defer t
  :commands (pyim-convert-code-at-point toggle-input-method)
  :init
  :general
  ("M-j" 'pyim-convert-code-at-point)
  :config
  (setq pyim-dicts "/home/yhxie/.emacs.d/pyim/pyim-bigdict.pyim")
  (setq default-input-method "pyim")
  (setq pyim-default-scheme 'quanpin)
  (setq-default pyim-english-input-switch-functions
                '(pyim-probe-dynamic-english
                  pyim-probe-isearch-mode
                  pyim-probe-program-mode
                  pyim-probe-org-structure-template))

  (setq-default pyim-punctuation-half-width-functions
                '(pyim-probe-punctuation-line-beginning
                  pyim-probe-punctuation-after-punctuation))
  (if (version<= "26.1" emacs-version)
      (progn
	(setq pyim-page-tooltip 'posframe)))
  (setq pyim-page-length 5))
(provide 'init-pyim)
