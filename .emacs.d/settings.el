;;use one charaters asnwers instead three
(defalias 'yes-or-no-p 'y-or-n-p)

;;make Emacs fullscreen on startup
(toggle-frame-fullscreen)

;;don't use tabs to indent
(setq-default indent-tabs-mode nil)

;;highlights current line
(global-hl-line-mode 1)

;;linum mode numerates lines
(global-linum-mode 1)

;;enable company by default
(global-company-mode)


;;;some mods variables

;;dalay before company's autocomplete appears
(setq company-idle-delay 0.2)

;;set company to start search from one character
(setq company-minimum-prefix-length 1)

;;set current line's highlight color
(set-face-background hl-line-face "#f5d69b")


(add-to-list 'default-frame-alist '(fullscreen . fullboth)) 

(global-undo-tree-mode)
