; Packages

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

; Backups

(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

; Menu Bar

(menu-bar-mode -1)

; IDO Mode

(custom-set-variables
 '(ido-enable-flex-matching t)
 '(ido-mode (quote both) nil (ido)))

; Line Numbers

(setq-default linum-format "%d ")

; Whitespace

(setq-default require-final-newline t)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Tabs

(setq-default indent-tabs-mode nil)
(setq-default css-indent-offset 2)

; Ruby

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))

; CSS

(add-to-list 'auto-mode-alist '(".*scss$" . css-mode))

; Theme

(custom-set-variables
 '(custom-safe-themes (quote ("60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" default))))

(load-theme 'monokai)

; Fonts

(custom-set-variables
 '(face-font-family-alternatives (quote (("Consolas" "monospace" "fixed")
                                         ("courier" "CMU Typewriter Text" "fixed")
                                         ("Sans Serif" "helv" "helvetica" "arial" "fixed")
                                         ("helv" "helvetica" "arial" "fixed")))))
(custom-set-faces
 '(default ((t (:background nil)))))

; Org Mode

(setq org-agenda-files (list "~/Dropbox/org"))
(setq org-directory "~/Dropbox/org")
(setq org-log-done 'time)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c a t") 'org-todo-list)

; Term

(setq multi-term-program "/bin/bash")
(put 'upcase-region 'disabled nil)
