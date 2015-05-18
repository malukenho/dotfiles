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

; Important keys

(setq ns-right-alternate-modifier (quote none))

; Menu Bar

(tool-bar-mode -1)

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

; Evil

(setq-default evil-auto-indent nil)

; Ruby

(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '(".rake$" . ruby-mode))

; Markdown

(add-to-list 'auto-mode-alist '(".apib$" . markdown-mode))

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

(defun insert-time ()
  (interactive)
  (insert (format-time-string "%H:%M " (current-time))))

(defun insert-date ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d" (current-time))))

(global-set-key (kbd "C-c e e") (lambda () (interactive) (find-file "~/.emacs.d/init.el")))
(global-set-key (kbd "C-c e j") (lambda () (interactive) (find-file "~/Desktop/JOURNAL")))
(global-set-key (kbd "C-c i t") 'insert-time)
(global-set-key (kbd "C-c i d") 'insert-date)
(global-set-key (kbd "C-c r x") 'xmp)
(global-set-key (kbd "C-c m d") 'multi-term-dedicated-toggle)
(global-set-key (kbd "C-c m e") 'evil-mode)
(global-set-key (kbd "C-c m a") 'auto-fill-mode)
(global-set-key (kbd "§") 'magit-status)

; Faces

(set-frame-font "Inconsolata-g 15")

; Terminal Emulation

(when (require 'term nil t) ; only if term can be loaded..
  (setq term-bind-key-alist
        (list (cons "C-c C-c" 'term-interrupt-subjob)
              (cons "C-p" 'previous-line)
              (cons "C-n" 'next-line)
              (cons "M-f" 'term-send-forward-word)
              (cons "M-b" 'term-send-backward-word)
              (cons "C-c C-j" 'term-line-mode)
              (cons "C-c C-k" 'term-char-mode)
              (cons "M-DEL" 'term-send-backward-kill-word)
              (cons "M-d" 'term-send-forward-kill-word)
              (cons "<C-left>" 'term-send-backward-word)
              (cons "<C-right>" 'term-send-forward-word)
              (cons "C-r" 'term-send-reverse-search-history)
              (cons "M-p" 'term-send-raw-meta)
              (cons "M-y" 'term-send-raw-meta)
              (cons "C-y" 'term-send-raw)
              (cons "s-v" 'term-paste))))

; Scheme

(setq scheme-program-name "/Applications/mit-scheme.app/Contents/Resources/mit-scheme")
(require 'xscheme)
