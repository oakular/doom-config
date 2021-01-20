;;; tools/vagrant/config.el -*- lexical-binding: t; -*-

(after! vagrant
  :config
  (map! :leader
        (:prefix "v" :desc "Vagrant Up"  :n "u" #'vagrant-up)
        (:prefix "v" :desc "Vagrant SSH" :n "s" #'vagrant-ssh)
        (:prefix "v" :desc "Vagrant Suspend" :n "d" #'vagrant-suspend)
        (:prefix "v" :desc "Vagrant Destroy" :n "D" #'vagrant-destroy)))
