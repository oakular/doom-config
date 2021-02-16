;;; tools/projectile/config.el -*- lexical-binding: t; -*-

(after! projectile
  (setq projectile-switch-project-action 'projectile-dired)
  (setq counsel-projectile-switch-project-action 'counsel-projectile-switch-project-action-dired)
  (add-to-list 'doom-projectile-cache-blacklist '".*vendor/")
  (map! :leader
        :map projectile-mode-map
        (:prefix "d" "f" #'projectile-find-dir)))
