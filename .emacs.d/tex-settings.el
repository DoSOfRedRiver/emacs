(ac-config-default)

(add-to-list 'ac-modes 'latex-mode)

(defun ac-LaTeX-mode-setup ()
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex
                                         ac-source-latex-commands)
                ac-sources)))


(add-hook 'LaTeX-mode-hook 'ac-LaTeX-mode-setup)
(global-auto-complete-mode)

(setq ac-math-unicode-in-math-p t)
