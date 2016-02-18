(setq org-log-done "note")
(setq org-use-fast-todo-selection t)
(setq org-default-notes-file "~/org/notes.org")
(setq org-agenda-files (list
			"~/.emacs.d/org/work.org"
			"~/.emacs.d/org/tasks.org"))

(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "|" "IN PROGRESS(n)"  "WAITING(w@/!)"  "HOLD(h@/!)" "|" "DONE(d)" "CANCELLED(c@/!)")
              (sequence "PHONE" "MEETING"))))

(setq org-todo-keyword-faces
      (quote (("TODO" :foreground "red" :weight bold)
              ("IN PROGRESS" :foreground "blue" :weight bold)
              ("DONE" :foreground "forest green" :weight bold)
              ("WAITING" :foreground "orange" :weight bold)
              ("HOLD" :foreground "magenta" :weight bold)
              ("CANCELLED" :foreground "forest green" :weight bold))))

(add-hook 'org-after-todo-state-change-hook 
	  (lambda () (cond ((eq org-state 'DONE) (print "hello")))))

