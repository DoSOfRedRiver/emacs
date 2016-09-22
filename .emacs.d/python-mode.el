(add-hook 'python-mode-hook 'auto-complete-mode)
(add-hook 'python-mode-hook 'jedi:ac-setup)

(add-hook 'after-init-hook #'global-flycheck-mode) 

(setq-default py-shell-name "ipython")
(setq-default py-which-bufname "IPython")
