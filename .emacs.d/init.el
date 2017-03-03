(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;;loads
(load "~/.emacs.d/el-get-settings")
(load "~/.emacs.d/hydra-snippets")
(load "~/.emacs.d/key-chord")
(load "~/.emacs.d/agenda-settings")
(load "~/.emacs.d/tabbar-settings")
(load "~/.emacs.d/other-functions")
(load "~/.emacs.d/key-bindings.el")
(load "~/.emacs.d/hooks.el")
(load "~/.emacs.d/variables.el")
(load "~/.emacs.d/multiply-cursors-settings.el")
(load "~/.emacs.d/ace-jump-mode.el")
(load "~/.emacs.d/python-mode.el")
(load "~/.emacs.d/rust-mode")
(load "~/.emacs.d/popwin-mode.el")
(load "~/.emacs.d/settings.el")

;;(load "~/.emacs.d/org-dashboard/org-dashboard")



;;hydra
;;ztree
;;[helm]
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (vlf)))
 '(safe-local-variable-values
   (quote
    ((eval ignore-errors "Write-contents-functions is a buffer-local alternative to before-save-hook"
           (add-hook
            (quote write-contents-functions)
            (lambda nil
              (delete-trailing-whitespace)
              nil))
           (require
            (quote whitespace))
           "Sometimes the mode needs to be toggled off and on."
           (whitespace-mode 0)
           (whitespace-mode 1))
     (whitespace-line-column . 80)
     (whitespace-style face tabs trailing lines-tail)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
