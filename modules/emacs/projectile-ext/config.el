;;; tools/projectile/config.el -*- lexical-binding: t; -*-

(after! projectile
  (setq projectile-switch-project-action 'projectile-dired)
  (setq counsel-projectile-switch-project-action 'counsel-projectile-switch-project-action-vc))
