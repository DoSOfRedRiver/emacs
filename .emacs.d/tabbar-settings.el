(defun tabbar-buffer-groups ()
  "Returns the list of group names the current buffer belongs to."
  (list
   (cond
    
    ;; ADD RULES TO SPLIT BUFFERS IN GROUPS HERE!
    ((string-equal "*" (substring (buffer-name) 0 1))
     "Common")

    ((memq major-mode
	   '(emacs-lisp-mode))
     "ELisp"
     )
    
    ;; if buffer is not grouped by the rules you would add above 
    ;; put it in the "General" group:
    (t
     "General"
     ))))

(setq tabbar-cycle-scope 'tabs)
(tabbar-mode t)
