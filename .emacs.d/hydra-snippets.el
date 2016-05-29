
(defhydra hydra-switch-tab (global-map "C-x")
  "switch tabbars"
  ("<right>" tabbar-forward "next")
  ("<left>" tabbar-backward "previous"))


(defhydra hydra-switch-window (global-map "C-x")
  "switch windows"
  ("o" other-window "next")
  ("p" prev-window "previous"))


(defhydra hydra-switch-tab-group (global-map "C-c")
  "switch tabbar groups"
  ("<right>" tabbar-forward-group "next")
  ("<left>" tabbar-backward-group "previous"))


(defhydra hydra-switch-buffer (global-map "C-x")
  "switch buffers"
  ("<up>" next-buffer "next")
  ("<down>" previous-buffer "previous"))


(defhydra hydra-undo (global-map "C-x")
  "undo changes"
  ("u" undo "undo"))


(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))
