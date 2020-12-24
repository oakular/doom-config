;;; db/config.el -*- lexical-binding: t; -*-
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

(setq sql-postgres-login-params
      '((user :default "postgres")
        (database :default "BookSite")
        (server :default "localhost")
        (port :default 5432)))
