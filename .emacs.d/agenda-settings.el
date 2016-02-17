(setq org-log-done t)
(setq org-use-fast-todo-selection t)
(setq org-default-notes-file "~/org/notes.org")
(setq org-agenda-files (list
			"~/.emacs.d/org/work.org"
			"~/.emacs.d/org/tasks.org"))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "|" "IN PROGRESS(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)" "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("IN PROGRESS" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

(add-hook 'org-after-todo-state-change-hook 
	  (lambda () (cond ((eq org-state 'DONE) (print "hello")))))

