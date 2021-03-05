;;; email/oak/gnus/config.el -*- lexical-binding: t; -*-

(after! gnus (evil-collection-init 'gnus))

(setq gnus-select-method
 '(nnimap "outlook"
          (nnimap-address "outlook.office365.com")
          (nnimap-server-port 993)
          (nnimap-stream ssl)
          (nnimap-authinfo-file "~/.authinfo")))
