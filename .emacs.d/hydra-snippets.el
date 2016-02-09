(defhydra hydra-switch-buffer (global-map "C-x")
  "switch  buffers"
  ("<right>" next-buffer "next")
  ("<left>" previous-buffer "previous"))


(defhydra hydra-switch-window (global-map "C-x")
  "switch windows"
  ("o" other-window "next")
  ("p" prev-window "previous"))


(defhydra hydra-undo (global-map "C-x")
  "undo changes"
  ("u" undo "undo"))


(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
