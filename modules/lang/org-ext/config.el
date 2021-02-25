;;; lang/org-ext/config.el -*- lexical-binding: t; -*-

(use-package! org-bullets-mode
  :hook
  (org-mode . org-bullets-mode))

(after! org-agenda-mode
  (setq org-agenda-span 7))
