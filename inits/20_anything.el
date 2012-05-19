;; (auto-install-batch "anything")
(when (require 'anything nil t)
  (setq
   ;; 候補を表示するまでの時間。デフォルトは0.5
   anything-idle-delay 0.3
   ;; タイプして再描写するまでの時間。デフォルトは0.1
   anything-input-idle-delay 0.2
   ;; 候補の最大表示数。デフォルトは50
   anything-candidate-number-limit 100
   ;; 候補が多いときに体感速度を早くする
   anything-quick-update t
   ;;候補選択ショートカットをアルファベットに
   anything-enable-shortcuts 'alphabet))

(when (require 'anything-config nil t)
  ;; root権限でアクションを実行するときのコマンド
  ;; デフォルトは"su"
  (setq anything-su-or-sudo "sodo"))

(require 'anything-match-plugin nil t)

(when (and (executable-find "cmigemo")
	   (require 'migemo nil t))
  (require 'anything-migemo nil t))

(when (require 'anything-complete nil t)
  ;; lispシンボルの補完候補の再検索時間
  (anything-lisp-complete-symbol-set-timer 150))

(require 'anything-show-completion nil t)

(when (require 'auto-install nil t)
  (require 'anything-auto-install nil t))

; (install-elisp "http://www.emacswiki.org/cgi-bin/emacs/download/descbinds-anything.el")
(when (require 'descbinds-anything nil t)
  ;; describe-bindingsをAnythingに置き換える
  (descbinds-anything-install))

;; anything-c-moccurの設定
; color-moccurが必要
; (install-elisp "http://emacswiki.org/emacs/download/color-moccur.el")
; (install-elisp "http://coderepos.org/share/export/30884/lang/elisp/anything-c-moccur/trunk/anything-c-moccur.el")
(when (require 'anything-c-moccur nil t)
  (setq
   ;; anything-c-moccur用 anything-idle-delay
   anything-c-moccur-anything-idle-delay 0.1
   ;; バッファの情報をハイライトする
   anything-c-moccur-higligt-info-line-flag t
   ;; 現在選択中の候補の位置をほかのwindowに表示する
   anything-c-moccur-enable-auto-look-flag t
   ;; 起動時にポイントの位置の単語を初期パターンにする
   anything-c-moccur-enable-initial-pattern t)
  ;; C-M-oにanything-c-moccur-occur-by-moccurを割り当てる
  (global-set-key (kbd "C-M-o")  'anything-c-moccur-occur-by-moccur))
