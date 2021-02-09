;;; editor/vue/config.el -*- lexical-binding: t; -*-

;; (add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-mode))
;; (add-hook 'mmm-mode-hook
;;           (lambda ()
;;             (set-face-background 'mmm-default-submode-face nil)))
;; (add-hook 'vue-mode-hook #'lsp!)

(define-derived-mode vue-web-mode web-mode "Vue Web Mode")
(add-to-list 'auto-mode-alist '("\\.vue\\'" . vue-web-mode))
(add-hook 'vue-web-mode-hook #'lsp!)
