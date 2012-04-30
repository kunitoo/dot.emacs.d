;; Control + h でバックスペース
(global-set-key (kbd "C-h") 'delete-backward-char)
;; "C-t"でウィンドウを切り替える。初期値はtranspose-chars
(global-set-key (kbd "C-t") 'other-window)
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
;; load_path を追加する関数を定義
(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))
;; 引数のディレクトリとそのサブディレクトリをload-pathを追加
(add-to-load-path "elisp" "conf" "public_repos")
;; 文字コードを指定
(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)
;; emacs-lisp-mode-hook用の関数を定義
(defun elisp-mode-hooks ()
  "lisp-mode-hooks"
  (when (require 'eldoc nil t)
    (setq eldoc-idle-delay 0.2)
    (setq eldoc-echo-area-use-multiline-p t)
    (turn-on-eldoc-mode)))
;; emacs-lisp-modeのフックをセット
(add-hook 'emacs-lisp-mode-hook 'elisp-mode-hooks)
