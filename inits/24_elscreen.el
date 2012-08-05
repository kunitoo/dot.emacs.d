;; Elscreenのプレフィックスキー(初期値はC-z)
;; Elscreenの設定
(when (require 'elscreen nil t)
  ;; C-z C-zをタイプした場合にデフォルトのC-zを利用する
  (if window-system
      (define-key elscreen-map (kbd "C-z") 'iconify-or-deiconify-frame)
    (define-key elscreen-map(kbd "C-z") 'suspend-emacs)))
