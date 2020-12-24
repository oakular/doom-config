;;; lang/csharp/config.el -*- lexical-binding: t; -*-

(after! omnisharp
  :config
  (map! :localleader
        :map omnisharp-mode-map
        (:prefix "r"
         "e" #'omnisharp-run-code-action-refactoring)))
