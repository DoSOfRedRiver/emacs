(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)


;;loads
(load "~/.emacs.d/rust-mode")
(load "~/.emacs.d/hydra-snippets")
(load "~/.emacs.d/key-chord")
(load "~/.emacs.d/org-dashboard/org-dashboard")
(load "~/.emacs.d/agenda-settings")


;;functions
(defun prev-window ()
  (interactive)
  (other-window -1))


;;key settings
(define-key global-map (kbd "C-x p") 'prev-window)
(global-set-key (kbd "C-c g") 'google-this-mode-submap)

;;chords
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define-global "BB" 'beginning-of-buffer)
(key-chord-define-global "vt" 'ztree-dir)
(key-chord-define-global "bt" 'ztree-diff)


;;hydra
;;ztree
;;[helm]




(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (solarized)))
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
