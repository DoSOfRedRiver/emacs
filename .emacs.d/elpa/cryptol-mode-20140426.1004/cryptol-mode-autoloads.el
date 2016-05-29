;;; cryptol-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (or (file-name-directory #$) (car load-path)))

;;;### (autoloads nil "cryptol-mode" "cryptol-mode.el" (22239 4767
;;;;;;  4240 900000))
;;; Generated autoloads from cryptol-mode.el

(autoload 'cryptol-backends "cryptol-mode" "\
Show the backends supported by the `cryptol-command'.

\(fn)" t nil)

(autoload 'cryptol-version "cryptol-mode" "\
Show the `cryptol-mode' version in the echo area.

\(fn)" t nil)

(autoload 'cryptol-mode "cryptol-mode" "\
Major mode for editing Cryptol code.

\(fn)" t nil)

(autoload 'literate-cryptol-mode "cryptol-mode" "\
Major mode for editing Literate Cryptol code.

\(fn)" t nil)

(autoload 'cryptol-batch-mode "cryptol-mode" "\
A mode for Cryptol batch files

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.cry$\\|\\.cyl$" . cryptol-mode))

(add-to-list 'auto-mode-alist '("\\.lcry$\\|\\.lcyl$" . literate-cryptol-mode))

(add-to-list 'auto-mode-alist '("\\.scr$" . cryptol-batch-mode))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; cryptol-mode-autoloads.el ends here
