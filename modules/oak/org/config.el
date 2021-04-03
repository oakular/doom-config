;;; oak/org/config.el -*- lexical-binding: t; -*-

(setq org-directory "~/dropbox/org/")
(setq org-agenda-files '("~/dropbox/org"))
(setq org-agenda-tags-column 80)
(setq org-archive-location (concat org-directory "archive/%s_archive::"))

(setq org-export-in-background t)

(defun org-agenda-face-attr ()
  (interactive)
  (setq buffer-face-mode-face '(:family "Cascadia Code" :height 100))
  (buffer-face-mode))

(defun org-face-attr ()
  (interactive)
  (setq buffer-face-mode-face '(:family "Cascadia Code" :height 100))
  (buffer-face-mode))

(add-hook 'org-agenda-mode-hook 'org-agenda-face-attr)
;; (add-hook 'org-mode-hook 'org-face-attr)

(setq org-clock-mode-line-total 'today)
(setq org-agenda-window-setup 'other-window)
(setq org-agenda-archives-mode t)
