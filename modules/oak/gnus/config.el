;;; email/oak/gnus/config.el -*- lexical-binding: t; -*-

(after! gnus
  (evil-collection-init 'gnus))

(setq gnus-select-method
 '(nnimap "outlook"
          (nnimap-address "outlook.office365.com")
          (nnimap-server-port 993)
          (nnimap-stream ssl)
          (nnimap-authinfo-file "~/.authinfo")
          (send-mail-function 'smtpmail-send-it)
          (smtpmail-smtp-server "smtp.office365.com")
          (smtpmail-smtp-type 'starttls)
          (smtpmail-smtp-service 587)))

(setq message-send-mail-function 'smtpmail-send-it)
(setq gnus-summary-line-format "%U%R%B %d - %f: %s\n")
