;;; lang/csharp/config.el -*- lexical-binding: t; -*-

;; (setq omnisharp-expected-server-version "v1.37.6")
;; (setq omnisharp-server-executable-path "/Users/callumw/.emacs.d/.local/etc/omnisharp/server/v1.37.6/run")

;; (after! omnisharp
;;   :config
;;   (map! :localleader
;;         :map omnisharp-mode-map
;;         (:prefix "r"
;;          "e" #'omnisharp-run-code-action-refactoring)
;;         (:prefix "g"
;;          "d" #'omnisharp-go-to-definition)
;;         (:prefix "g"
;;          "D" #'omnisharp-go-to-definition-other-window)))
