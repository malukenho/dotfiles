; Packages

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t))

(add-to-list 'load-path "~/.emacs.d/other")

(require 'rcodetools)

; Backups, Auto-save and Lockfiles

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq create-lockfiles nil)

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
(setq-default js-indent-level 2)

; Ruby

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rake$" . ruby-mode))

; CSS

(add-to-list 'auto-mode-alist '(".*scss$" . css-mode))

; Org Mode

(setq org-agenda-files (list "~/Dropbox/org"))
(setq org-directory "~/Dropbox/org")
(setq org-log-done 'time)

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c a t") 'org-todo-list)
(global-set-key (kbd "C-c a m") (lambda () (interactive) (find-file "~/Dropbox/org/me.org")))
(global-set-key (kbd "C-c a w") (lambda () (interactive) (find-file "~/Dropbox/org/wa.org")))

; Shortcuts

(global-set-key (kbd "C-c a e") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c r x") 'xmp)
(global-set-key (kbd "C-c m d") 'multi-term-dedicated-toggle)
(global-set-key (kbd "C-c m e") 'evil-mode)
(global-set-key (kbd "C-c m a") 'auto-fill-mode)
