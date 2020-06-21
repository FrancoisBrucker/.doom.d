;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; heavily used as inspiration :
;; https://github.com/hlissner/doom-emacs-private/blob/master/config.el

(setq user-full-name "François Brucker"
      user-mail-address "francois.brucker@gmail.com"

      doom-theme 'doom-dracula
      treemacs-width 32

)

;; alt is alt for mac
(setq-default mac-option-modifier nil)

;;
;;; UI


;; "monospace" means use the system default.
(setq doom-font (font-spec :family "monospace" :size 14))


;; customization
(setq evil-snipe-scope 'buffer)
