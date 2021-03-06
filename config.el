;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Callum Warrilow"
      user-mail-address "callum_warrilow@outlook.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
(setq doom-font (font-spec :family "Cascadia Code" :size 10)
      doom-variable-pitch-font (font-spec :family "sans" :size 10))

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-solarized-dark-brighter-text t)
(setq doom-solarized-dark-brighter-modeline t)
(setq doom-solarized-dark-padded-modeline t)
(setq doom-theme 'doom-solarized-dark)

(add-to-list 'default-frame-alist '(height . 48))
    (add-to-list 'default-frame-alist '(width . 120))

(setq-default inhibit-startup-screen t)
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(setq initial-scratch-message "")

(setq app-name "Emacs")
(setq doom-fallback-buffer-name app-name
      +doom-dashboard-name app-name)
(setq-default frame-title-format '("%f" " - " "%b"))


;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(after! evil
  (map! :leader "SPC" 'evil-ex-nohighlight))

(when IS-MAC
  (setq mac-command-modifier 'meta)
  (setq mac-option-modifier 'none)
  (setq ns-auto-titlebar-mode nil)
  (setq mouse-wheel-scroll-amount '(1
                                    ((shift) . 5)
                                    ((control))))
  (global-set-key [(meta h)] 'ns-do-hide-emacs))

(map! :map eshell-mode-map "C-l" #'eshell/clear)

(setq eshell-prefer-lisp-functions t)

;; (after! js2-mode
;;  (setq js-indent-level 4))
(setq-hook! js2-mode js-indent-level 4)
(setq lsp-ui-sideline-enable nil)
