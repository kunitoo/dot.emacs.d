;; redo+.elの設定
; (install-elisp "http://www.emacswiki.org/emacs/download/redo+.el")
(when (require 'redo+ nil t)
  ;; C-.にリドゥを割当
  (global-set-key (kbd "C-.") 'redo))
