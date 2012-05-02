;; バックアップを~/.emacs.d/backups/に集める
(add-to-list 'backup-directory-alist
	    (cons "." "~/.emacs.d/backups/"))
;; Emacs からの質問をy/nで回答する
(fset 'yes-or-no-p 'y-or-n-p)
;; スタートアップメッセージを非表示
(setq inhibit-startup-screen t)
;; 現在行をハイライト
(global-hl-line-mode t)
;; 対応する括弧の強調設定
;; paren-mode:対応する括弧を強調して表示する
(setq show-paren-delay 0) ; 表示までの秒数。初期値は0.125
(show-paren-mode t) ; 有効化
;; parenのスタイル: expressionは括弧内も強調表示
(setq show-paren-style 'expression)
;; フェイスを変更する
(set-face-background 'show-paren-match-face nil)
(set-face-underline-p 'show-paren-match-face "red")
;; 文字コードを指定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
