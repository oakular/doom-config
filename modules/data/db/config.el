;;; db/config.el -*- lexical-binding: t; -*-
(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (toggle-truncate-lines t)))

;; (setq sql-postgres-login-params
;;       '((user :default "postgres")
;;         (database :default "BookSite")
;;         (server :default "localhost")
;;         (port :default 5432)))


(setq sql-connection-alist
      '((shipmate-dev (sql-product 'mysql)
                      (sql-default-directory "/ssh:vagrant@shipmate.test:")
                      (sql-user "root")
                      (sql-server "localhost")
                      (sql-database "shipmate"))
        (wowcher-dev (sql-product 'mysql)
                      (sql-default-directory "/ssh:vagrant@wowcher.test:")
                      (sql-user "root")
                      (sql-server "localhost")
                      (sql-database "redemption_development"))
        (herodotus-dev (sql-product 'postgres)
                       (sql-user "postgres")
                       (sql-server "localhost")
                       (sql-database "BookSite")
                       (sql-port 5432))))
