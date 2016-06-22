(define-key global-map (kbd "C-x p") 'prev-window)


;;chords
(require 'key-chord)
(setq key-chord-two-keys-delay 0.3)
(key-chord-mode 1)
(key-chord-define-global "BB" 'beginning-of-buffer)
(key-chord-define-global "vt" 'ztree-dir)
(key-chord-define-global "bt" 'ztree-diff)
(key-chord-define-global "FS" 'toggle-frame-fullscreen)
(key-chord-define-global "DD" '(lambda ()
                                 (interactive)
                                 (move-beginning-of-line 1)
                                 (kill-line)
                                 (yank)
                                 (open-line 1)
                                 (next-line 1)
                                 (yank)))
