;;; tools/oak/docker/config.el -*- lexical-binding: t; -*-

(after! docker
  (set-popup-rule! "^\\*docker-compose.*" :side 'bottom :quit 'current))
