(setq default-frame-alist
    (append
     (list
      '(top . 0)
      '(left . 840)
      '(width . 117)
      '(height . 71)
      '(alpha . (85 70))
      '(foreground-color . "white")
      '(background-color . "black")
      '(cursor-color . "gray"))
     default-frame-alist))

(set-face-foreground 'mode-line "black")
(set-face-background 'mode-line "gray")
;; フレームの透過設定
(set-frame-parameter (selected-frame) 'alpha '(80 80))
