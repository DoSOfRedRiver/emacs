
(defhydra hydra-switch-tab (global-map "C-x")
  "switch buffers"
  ("<right>" windmove-right "right")
  ("<left>" windmove-left  "left")
  ("<up>" windmove-up "up")
  ("<down>" windmove-down "down"))


(defhydra hydra-switch-window (global-map "C-x")
  "switch windows"
  ("o" other-window "next")
  ("p" prev-window "previous"))


(defhydra hydra-switch-tab-group (global-map "C-c")
  "switch tabbar groups"
  ("<right>" tabbar-forward-group "next")
  ("<left>" tabbar-backward-group "previous"))


(defhydra hydra-undo (global-map "C-x")
  "undo changes"
  ("u" undo "undo"))


(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
