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
(add-to-load-path "elisp" "conf" "public_repos" "elpa")
;; init-loader.el
; (install-elisp "http://coderepos.org/share/export/39139/lang/elisp/init-loader/init-loader.el")
(require 'init-loader)
(init-loader-load)
