;; Control + h でバックスペース
(global-set-key (kbd "C-h") 'delete-backward-char)
;; "C-t"でウィンドウを切り替える。初期値はtranspose-chars
(global-set-key (kbd "C-t") 'other-window)
;; M-yにanything-show-kill-ringを割り当てる
(global-set-key (kbd "M-y") 'anything-show-kill-ring)
