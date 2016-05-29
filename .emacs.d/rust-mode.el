;;racer settings
(setq racer-cmd "/usr/local/bin/racer")
;;(setq racer-rust-src-path "d:/rust_src/rustc-1.6.0/src/")
;;(setenv "RUST_SRC_PATH" "d:/rust_src/rustc-1.6.0/src/")

;;hooks
;;(add-hook 'rust-mode-hook #'racer-mode)
;;(add-hook 'racer-mode-hook #'eldoc-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(add-hook 'rust-mode-hook
          '(lambda ()
             ;; ;;enable racer
             ;; (racer-mode)
             ;; ;;eldoc to provide documentation
             ;; (racer-turn-on-eldoc)
             ;; ;;flycheck to check syntax on fly
             ;; (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
             ;; ;;company-racer in rust-mode
             ;; (set (make-local-variable 'company-backends) '(company-racer))
             ;; ;;jump to doc binding
             ;; (local-set-key (kbd "M-.") #'racer-find-definition)
             ;; ;;autocomplete binding
             ;; (local-set-key (kbd "TAB") #'racer-complete-or-indent)))
             ))
             
;;(add-hook 'racer-mode-hook #'company-mode)
;;(add-hook 'racer-mode-hook #'company-racer)



;; (global-set-key (kbd "TAB") #'company-indent-or-complete-common)
;; (setq company-tooltip-align-annotations t)

(defun rust-save-and-build (mode)
  (interactive)
  (save-buffer)

  (setq tmp (shell-command-to-string (format "cygpath.exe -m %s"
					     (buffer-file-name))))
 
  (if (locate-dominating-file buffer-file-name "Cargo.toml")
      (compile mode)
    
    (compile
     (format "rustc %s %s.exe"
             tmp
             (file-name-sans-extension tmp)))))



(defun rust-cmd-run ()
  (interactive)
  (rust-save-and-build "cargo run"))

(defun rust-cmd-build ()
  (interactive)
  (rust-save-and-build "cargo build"))

(defun rust-cmd-test ()
  (interactive)
  (rust-save-and-build "cargo test"))



(add-hook 'rust-mode-hook
	  (lambda ()
	    (define-key rust-mode-map (kbd "<f5>") 'rust-cmd-run)))

(add-hook 'rust-mode-hook
	  (lambda ()
	    (define-key rust-mode-map (kbd "<f6>") 'rust-cmd-build)))

(add-hook 'rust-mode-hook
	  (lambda ()
	    (define-key rust-mode-map (kbd "<f7>") 'rust-cmd-test)))


;; (defun rust-save-and-build ()
;;   (interactive)
;;   (save-buffer)

;;   (setq tmp (shell-command-to-string (format "cygpath.exe -m %s"
;; 					     (buffer-file-name)))
 
;; 	(if (locate-dominating-file buffer-file-name "Cargo.toml")
;;             (compile (format "cargo %s" mode))
	  
;; 	  (compile
;; 	   (format "rustc %s %s.exe"
;; 		   tmp
;; 		   (file-name-sans-extension tmp))))))


;; (add-hook 'rust-mode-hook
;; 	  (lambda ()
;; 	    (define-key rust-mode-map (kbd "<f7>") 'rust-cmd-test)))
