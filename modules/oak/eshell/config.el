;;; oak/eshell/config.el -*- lexical-binding: t; -*-

(after! eshell
  (setq eshell-rc-script "$DOOMDIR/modules/oak/profile")
  (setq eshell-aliases-file "$DOOMDIR/modules/oak/alias"))

(use-package load-bash-alias
  :config
  (setq load-bash-alias-bashrc-file "$HOME/.bashrc"))
