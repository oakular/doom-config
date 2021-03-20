;;; oak/ebook/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

(defun set-nov-font ()
  (face-remap-add-relative 'variable-pitch :family "Liberation Serif"
                                           :height 1.0))

(after! nov
  (evil-collection-init 'nov))

(add-hook! nov-mode 'set-nov-font)

(use-package! nov
  :config
  (setq nov-text-width 80))
