(use-package smartparens
  :ensure t
  :defer t
  :diminish smartparens-mode
  :init
  (progn
    (smartparens-global-mode t)
    (smartparens-global-strict-mode t))
  :config
  ;; smartparens #431 workaround for fixing conflict between smarparens and yasnippet
  (add-hook 'yas-before-expand-snippet-hook (lambda () (smartparens-mode -1)))
  (add-hook 'yas-after-exit-snippet-hook (lambda () (smartparens-mode 1)))
  (my/leader-keys
    "k{" 'sp-wrap-curly
    "k(" 'sp-wrap-round
    "k[" 'sp-wrap-square
    "ku" 'sp-unwrap-sexp
    "kr" 'sp-rewrap-sexp
    "tp" 'my/toggle-smartparens)
  (my/all-states-keys
    :prefix "M-s"
    ;; navigation
    "f" 'sp-forward-sexp
    "b" 'sp-backward-sexp
    "d" 'sp-down-sexp
    "M-d" 'sp-backward-down-sexp
    "u" 'sp-up-sexp
    "M-u" 'sp-backward-up-sexp
    "n" 'sp-next-sexp
    "p" 'sp-previous-sexp
    "a" 'sp-beginning-of-sexp
    "e" 'sp-end-of-sexp
    ;; slurp and barf
    "l" 'sp-forward-slurp-sexp
    "h" 'sp-backward-slurp-sexp
    "M-l" 'sp-forward-barf-sexp
    "M-h" 'sp-backward-barf-sexp
    ;; killing
    "k" 'sp-kill-sexp
    "M-k" 'sp-backward-kill-sexp)
  (defun my/toggle-smartparens ()
    (interactive)
    (if (bound-and-true-p smartparens-mode)
	(progn
	  (smartparens-mode -1)
	  (smartparens-strict-mode -1)
	  (evil-smartparens-mode -1)
	  (message "Smartparens mode disabled in current buffer"))
      (progn
	(smartparens-mode 1)
	(smartparens-strict-mode 1)
	(evil-smartparens-mode 1)
	(message "Smartparens mode enabled in current buffer"))))
  (defhydra hydra-smartparens (:hint nil)
    "
 Moving^^^^                       Slurp & Barf^^   Wrapping^^            Sexp juggling^^^^               Destructive
------------------------------------------------------------------------------------------------------------------------
 [_a_] beginning  [_n_] down      [_h_] bw slurp   [_R_]   rewrap        [_S_] split   [_t_] transpose   [_c_] change inner  [_w_] copy
 [_e_] end        [_N_] bw down   [_H_] bw barf    [_u_]   unwrap        [_s_] splice  [_A_] absorb      [_C_] change outer
 [_f_] forward    [_p_] up        [_l_] slurp      [_U_]   bw unwrap     [_r_] raise   [_E_] emit        [_k_] kill          [_g_] quit
 [_b_] backward   [_P_] bw up     [_L_] barf       [_(__{__[_] wrap (){}[]   [_j_] join    [_o_] convolute   [_K_] bw kill       [_q_] quit"
    ;; Moving
    ("a" sp-beginning-of-sexp)
    ("e" sp-end-of-sexp)
    ("f" sp-forward-sexp)
    ("b" sp-backward-sexp)
    ("n" sp-down-sexp)
    ("N" sp-backward-down-sexp)
    ("p" sp-up-sexp)
    ("P" sp-backward-up-sexp)
  
  ;; Slurping & barfing
  ("h" sp-backward-slurp-sexp)
  ("H" sp-backward-barf-sexp)
  ("l" sp-forward-slurp-sexp)
  ("L" sp-forward-barf-sexp)
  
  ;; Wrapping
  ("R" sp-rewrap-sexp)
  ("u" sp-unwrap-sexp)
  ("U" sp-backward-unwrap-sexp)
  ("(" sp-wrap-round)
  ("{" sp-wrap-curly)
  ("[" sp-wrap-square)
  
  ;; Sexp juggling
  ("S" sp-split-sexp)
  ("s" sp-splice-sexp)
  ("r" sp-raise-sexp)
  ("j" sp-join-sexp)
  ("t" sp-transpose-sexp)
  ("A" sp-absorb-sexp)
  ("E" sp-emit-sexp)
  ("o" sp-convolute-sexp)
  
  ;; Destructive editing
  ("c" sp-change-inner :exit t)
  ("C" sp-change-enclosing :exit t)
  ("k" sp-kill-sexp)
  ("K" sp-backward-kill-sexp)
  ("w" sp-copy-sexp)

  ("q" nil)
  ("g" nil))
  (my/all-states-keys
    "C-s" 'hydra-smartparens/body))

(use-package evil-smartparens
  :ensure t
  :defer t
  :diminish evil-smartparens-mode
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode))
(provide 'init-smartparens)
