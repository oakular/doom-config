;;; os/oak/exec-from-shell/config.el -*- lexical-binding: t; -*-

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))
