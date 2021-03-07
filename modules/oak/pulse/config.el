;;; ui/pulse/config.el -*- lexical-binding: t; -*-

(use-package! goggles
  :demand t
  :config
  (goggles-mode)
  (setq-default goggles-pulse t))
