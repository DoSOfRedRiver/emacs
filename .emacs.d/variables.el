;;company settings
(global-company-mode)
(setq company-idle-delay 0.2)
(setq company-minimum-prefix-length 1)

;;emacs
(setq-default indent-tabs-mode nil)
(global-hl-line-mode 1)
(global-linum-mode 1)
(global-set-key (kbd "<f10>") 'bookmark-bmenu-list)
(set-face-background hl-line-face "#d3d3d3")
(toggle-frame-fullscreen)
