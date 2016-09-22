(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;;loads
(load "~/.emacs.d/el-get-settings")
(load "~/.emacs.d/rust-mode")
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
;;(load "~/.emacs.d/org-dashboard/org-dashboard")



;;hydra
;;ztree
;;[helm]
