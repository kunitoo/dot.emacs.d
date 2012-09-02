;; -*- mode: emacs-lisp; coding: utf-8 -*-
(setq howm-menu-lang 'ja)
(require 'howm)

(setq howm-keyword-file (expand-file-name ".howm-keys"))
(setq howm-history-limit nil)  ;; Don't erase my ~/.howm-history.
(setq howm-file-name-format "%Y/%m/%Y_%m_%d.howm") ; 1 日 1 ファイル

(setq howm-process-coding-system 'utf-8)
(setq howm-with-coding-system 'utf-8)

;; ファイルをRETで開くと、一覧を消す。C-u RETだと残す
(setq howm-view-summary-persistemt nil)

(setq howm-list-recent-title t) ;; 「最近のメモ」一覧時にタイトルを表示
(setq howm-list-all-title t) ;; 全メモ一覧時にタイトル表示
(setq howm-menu-expiry-hours 2) ;; メニューを2時間キャッシュする

;; 予定の表示範囲
(setq howm-menu-schedule-days-before 14) ;; 何日前から
(setq howm-menu-schedule-days 7) ;; 何日後まで

(setq howm-refresh-after-save nil) ;; saveしてもmenuを更新しない
(setq howm-menu-refresh-after-save nil)
(setq howm-menu-recent-num 10) ;; 最近のメモの数
(setq howm-menu-todo-num 10) ;; TODOの数
(setq howm-view-keep-one-window t) ;; C-x 1後は勝手にフレームを分割しない(SPCで再分割)
(setq howm-list-normalizer 'howm-view-sort-by-mtime) ;; 更新時刻でソートする

;; 完了したTODOは表示しない
(setq howm-todo-menu-types "[-+~!]")

(add-hook
 'howm-mode-on-hook
 (lambda()
   (auto-fill-mode -1)
   ))