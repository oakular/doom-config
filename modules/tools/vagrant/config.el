;;; tools/vagrant/config.el -*- lexical-binding: t; -*-

(use-package! vagrant
  :config
  (map! :leader
        (:prefix "v" :desc "Vagrant Up"  :n "u" #'vagrant-up)
        (:prefix "v" :desc "Vagrant SSH" :n "s" #'vagrant-tramp-term)
        (:prefix "v" :desc "Vagrant Suspend" :n "d" #'vagrant-suspend)
        (:prefix "v" :desc "Vagrant Destroy" :n "D" #'vagrant-destroy)
        (:prefix "v" :desc "Vagrant Halt" :n "h" #'vagrant-halt)
        (:prefix "v" :desc "Vagrant Provision" :n "p" #'vagrant-provision)))

(after! vagrant
  (set-popup-rule! "^\\*Vagrant\\*" :side 'bottom :quit 'other))
