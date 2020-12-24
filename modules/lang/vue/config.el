;;; editor/vue/config.el -*- lexical-binding: t; -*-

(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
(add-hook 'mmm-mode-hook
          (lambda ()
            (set-face-background 'mmm-default-submode-face nil)))
