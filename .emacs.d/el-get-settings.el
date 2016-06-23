(when (file-readable-p "~/.emacs.d/el-get/el-get.el")
  (add-to-list 'load-path "~/.emacs.d/el-get")
  (require 'el-get)
  
  (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
  (el-get 'sync)

  (setq required-packages
        (append
         '(
           company-mode
           emacs-neotree
           flycheck
           git-gutter
           helm
           highlight-parentheses
           indent-guide
           js2-mode
           json-mode
           magit
           markdown-mode
           multiple-cursors
           undo-tree
           yasnippet
           yasnippet-snippets
           tabbar
           rust-mode
           ztree
	   hydra
           )
         (mapcar 'el-get-as-symbol (mapcar 'el-get-source-name el-get-sources))))
  
  (el-get 'sync required-packages)

  
  ;; (require 'package)
  ;; (require 'cl)
  
  ;; (defun cfg:install-packages ()
  ;;   (let ((pkgs (remove-if #'package-installed-p elpa-packages)))
  ;;     (when pkgs
  ;; 	(message "%s" "Emacs refresh packages database...")
  ;; 	(package-refresh-contents)
  ;; 	(message "%s" " done.")
  ;; 	(dolist (p elpa-packages)
  ;; 	  (package-install p)))))

  
;;;  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/") t)
;;;  (add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
  ;; Раскомментируйте строку ниже, если хотите, чтобы так же стал доступен основной репозиторий MELPA
  ;; Пакеты там более свежие, но и шансов нарваться на глюки больше, чем в Stable
  ;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  
  ;; Обновляем список пакетов, доступных для установки через packages
;;;  (package-initialize)

  ;; Запускаем процесс установки
;;;  (cfg:install-packages))
  )

  
