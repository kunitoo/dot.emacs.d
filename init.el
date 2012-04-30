;; Control + h でバックスペース
(global-set-key (kbd "C-h") 'delete-backward-char)
;; "C-t"でウィンドウを切り替える。初期値はtranspose-chars
(global-set-key (kbd "C-t") 'other-window)
;; 現在行をハイライト
(global-hl-line-mode t)
