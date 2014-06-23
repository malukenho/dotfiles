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
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("33c5a452a4095f7e4f6746b66f322ef6da0e770b76c0ed98a438e76c497040bb" "53c542b560d232436e14619d058f81434d6bbcdc42e00a4db53d2667d841702e" "60f04e478dedc16397353fb9f33f0d895ea3dab4f581307fbf0aa2f07e658a40" default)))
 '(face-font-family-alternatives (quote (("Consolas" "monospace" "fixed") ("courier" "CMU Typewriter Text" "fixed") ("Sans Serif" "helv" "helvetica" "arial" "fixed") ("helv" "helvetica" "arial" "fixed"))))
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

; Theme

(load-theme 'monokai)

(defun on-after-init ()
  (unless (display-graphic-p (selected-frame))
    (set-face-background 'default "unspecified-bg" (selected-frame))))

(add-hook 'window-setup-hook 'on-after-init)

; Fonts

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil)))))

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
