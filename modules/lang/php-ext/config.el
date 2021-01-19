;;; lang/php-ext/config.el -*- lexical-binding: t; -*-

(after! phpactor
  :config
  (map! :localleader
        :map php-mode-map
        (:prefix "g"
         "d" #'phpactor-goto-definition)
        (:prefix "r"
         "r" #'phpactor-rename-variable)
        (:prefix "f"
         "r" #'phpactor-find-references)
        (:prefix "c"
         "m" #'phpactor-context-menu)))
