(require 'package)

(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(fset 'insertPound "#")
(define-key global-map "\M-3" 'insertPound)

(custom-set-variables
 '(ido-mode (quote both) nil (ido)))

(global-linum-mode 1)
(setq linum-format "%3d ")
