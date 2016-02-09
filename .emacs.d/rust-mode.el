(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(setq company-tooltip-align-annotations t)

(defun rust-save-compile-and-run ()
  (interactive)
  (save-buffer)

  (setq tmp (shell-command-to-string (format "cygpath.exe -m %s"
					     (buffer-file-name)))
	(print tmp)
 
	(if (locate-dominating-file tmp "Cargo.toml")
	    
	    (compile "cargo run")
	  
	  (compile
	   (format "rustc %s %s.exe"
		   tmp
		   (file-name-sans-extension tmp))))))




(add-hook 'rust-mode-hook
	  (lambda ()
	    (define-key rust-mode-map (kbd "<f5>") 'rust-save-compile-and-run)))
