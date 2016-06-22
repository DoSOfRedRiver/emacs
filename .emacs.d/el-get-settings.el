(when (file-readable-p "~/.emacs.d/el-get/el-get.el")
  (add-to-list 'load-path "~/.emacs.d/el-get")
  (require 'el-get)

  (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes"))
