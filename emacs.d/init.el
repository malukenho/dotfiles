(menu-bar-mode -1)

(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

(global-linum-mode t)

(setq linum-format "%d ")

(custom-set-variables
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido)))
