(defhydra hydra-switch-window (global-map "C-x")
  "switch window"
  ("C-<right>" windmove-right "right")
  ("C-<left>" windmove-left "left")
  ("C-<down>" windmove-down "down")
  ("C-<up>" windmove-up "up"))


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
